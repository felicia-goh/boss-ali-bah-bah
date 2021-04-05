class Workday < ApplicationRecord
  belongs_to :user
  #validates :date, uniqueness: true

  def self.dates
  	where(user: current_user).map do |day|
      day.date
    end
  end

  def self.default_times
  	timestep = 5 * 60
    now = Time.at((Time.now.to_r / timestep).round * timestep).strftime("%H:%M")
    now_plus_9h = (Time.at((Time.now.to_r / timestep).round * timestep) + 9 * 60 * 60).strftime("%H:%M")
    default_start_time = Time.parse(now)
    default_end_time = Time.parse(now_plus_9h)

    default_start_time, default_end_time
  end

  def self.create_workday_with_datetime(workday_params)
  	if workday_params[:on_rest].nil? && workday_params[:on_mc].nil?
      attributes = create_datetime(workday_params)
      workday = Workday.new(attributes)
    else
      attributes = workday_params
      workday = Workday.new(attributes)
      workday.start_time = @workday.date
    end
    workday.user = current_user

    workday, attributes
  end

  private

  def create_datetime(workday_params)
    attributes = {}
    attributes[:date] = workday_params[:date]
    start_datetime = "#{workday_params[:date]}T#{workday_params['start_time(4i)']}:#{workday_params['start_time(5i)']}"
    attributes[:start_time] = Time.zone.strptime(start_datetime, "%Y-%m-%dT%H:%M")
    end_datetime = "#{workday_params[:date]}T#{workday_params['end_time(4i)']}:#{workday_params['end_time(5i)']}"
    attributes[:end_time] = Time.zone.strptime(end_datetime, "%Y-%m-%dT%H:%M")
    attributes
  end
end
