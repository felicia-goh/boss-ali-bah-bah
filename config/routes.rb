Rails.application.routes.draw do
  root to: 'pages#home'
  get '/landing', to: 'pages#landing'
  get '/calendar', to: 'pages#calendar'
  get '/files', to: 'pages#files'

  devise_for :users, controllers: { registrations: "registrations" }
  resources :users

  get '/onboarding', to: 'users#onboarding', as: 'onboarding'
  patch '/contract_update', to: 'users#contract_update', as: 'contract_update'
  get '/personal_details', to: 'users#personal_details', as: 'personal_details'
  patch '/personal_update', to: 'users#personal_update', as: 'personal_update'

  resources :accidents do
    member do
      get :new3
      get :complete
    end
  end
  get '/accidents/confirm', to: 'accidents#confirm'
  post '/accidents/send', to: 'accidents#send_accident'
  post '/workdays/send', to: 'workdays#send_worklog'
  post '/payslips/send', to: 'payslips#send_payslip'
  post '/users/send', to: 'users#send_ipa'


  resources :workdays, only: [:new, :create, :edit, :update]
  get '/workdays/on_leave', to: 'workdays#on_leave'
  get '/workdays/on_leave/:id', to: 'workdays#on_leave'
  get '/workdays/working/:id', to: 'workdays#working'

  resources :payslips, only: [:new, :create, :edit, :update]

  get '/organisation', to: 'organisations#index'
  get '/faq', to: 'organisations#faq'
end
