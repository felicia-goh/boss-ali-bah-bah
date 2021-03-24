Article.destroy_all;
Organisation.destroy_all;

Article.create!(title:"How is my hourly pay calculated?",content:"Hourly pay = (12 x basic monthly salary) divided by (52 weeks in a year x 44 hours a week)
  You can find your basic monthly salary in your IPA.")

Article.create!(title:"When can I be paid overtime pay?" ,content:"If you work more than 44 hours a week, not including meal breaks, you should be paid overtime pay.
  Your overtime pay is 1.5 times your hourly pay.")

Article.create!(title:"How much should I be paid if I work on my rest day?" ,content:"If you work 4 hours or less on your rest day, you will be paid 8 times your hourly pay.
  If you work 4-8 hours, you will be paid 16 times your hourly pay.
  You must have 1 rest day every 7 days.")

Article.create!(title:"
What should I do if my boss wants to force me to fly home?" ,content:"Tell airport police that your boss is forcing you to fly home. They can allow you to stay in Singapore to file a complaint at MOM.")

Article.create!(title:"When should I expect my boss to pay me?" ,content:"You should receive your salary at least once a month, and no more than 7 days after the salary period (the month that you are being paid for).")

Article.create!(title:"My boss said that there is no work so he is not paying me." ,content:"Your boss must pay you even if he does not give you work.")

Article.create!(title:"If my boss has not paid me for 2 years, will I be able to claim it all back?" ,content:"You can only claim up to 1 year of unpaid or underpaid salary from the date of your claim. Seek help if your boss has not paid you for a long period.")

Article.create!(title:"Must my boss pay me when I am on MC?" ,content:"If you have worked more than 6 months, you should be paid for 14 days of MC if you are not in the hospital, or 60 days of MC if you are in the hospital.")

Organisation.create!(name: 'TWC', address:  '#09-86, Beach Rd, Golden Mile Complex, 199588',opening_time: '9am',closing_time: '6pm',phone_number: '6247 7001',email_address: 'info@twc2.org.sg',website: 'twc2.org.sg',latitude: 1.3030873766686772,longitude: 103.86526041048982)
Organisation.create!(name: 'HOME - North Bridge' , address: '111 North Bridge Rd, #05-22 Peninsula Plaza, Singapore 179098',opening_time: '10am',closing_time: '6:30pm',phone_number: '6341 5535',email_address: 'nurezlia@home.org.sg',website: 'home.org.sg',latitude: 1.292610803938271,longitude: 103.85077648350223)
Organisation.create!(name: 'HOME - Geylang', address: '810 Geylang Road, City Plaza, #02-95, Singapore 40928',opening_time: '10am',closing_time: '6:30pm',phone_number: '6341 5535',email_address: 'nurezlia@home.org.sg ',website: 'home.org.sg',latitude: 1.3154079454383143,longitude: 103.89375127635545)
Organisation.create!(name: 'HOME - Lucky Plaza', address: '304 Orchard Road, Lucky Plaza, #06-22, Singapore 238863',opening_time: '10am',closing_time: '6:30pm',phone_number: '6341 5535',email_address: 'nurezlia@home.org.sg ',website: 'home.org.sg',latitude: 1.3053477607959247,longitude: 103.83399143827864)
Organisation.create!(name: 'HealthServe - Jln Besar', address: '151A Jln Besar, Singapore 208869',opening_time: '10am',closing_time: '6:30pm',phone_number: '64933282',email_address: 'info@healthserve.org.sg',website: 'http://www.healthserve.org.sg/',latitude: 1.3083664218267992,longitude: 103.85636325045485)
Organisation.create!(name: 'HealthServe - Aspri', address: '5D Jln Papan, #01-34/36 Aspri Westlite Papan, Singapore 619421',opening_time: '10am',closing_time: '6:30pm',phone_number: '83649901',email_address: 'info@healthserve.org.sg ',website: 'http://www.healthserve.org.sg/',latitude: 1.3239715337267655 ,longitude: 103.7275271032213)
Organisation.create!(name: 'HealthServe - Westlite Domitory', address: 'Westlite Dormitory
36 Mandai Estate, #00-00',opening_time: '10am',closing_time: '6:30pm',phone_number: '6635 8372',email_address: 'info@healthserve.org.sg',website: 'http://www.healthserve.org.sg/',latitude: 1.4116805001068844,longitude:103.75860438879701)
Organisation.create!(name: 'SG Accident Help Centre', address: '6 Flanders Square',opening_time: '10am',closing_time: '6:30pm',phone_number: '6291 0751',email_address: 'info@mysite.com',website: 'https://www.sgaccident.org.sg/copy-of-contact',latitude: 1.312667971502342,longitude: 103.85759574133353)
Organisation.create!(name: 'Migrant Workers Centre', address: '51 Soon Lee Rd, Migrant Workers Centre Recreation Club, Singapore 628088',opening_time: '9am',closing_time: '7pm',phone_number: '65362692',email_address: 'sip@mwc.org.sg',website: 'http://www.mwc.org.sg/',latitude: 1.33291179549632,longitude: 103.69914502598799)
Organisation.create!(name: 'ACMI', address: '#04-01, Agape Village, 319264, 7 Lor 8 Toa Payoh, Singapore 319252',opening_time: '8:30am',closing_time: '5:30pm',phone_number: '68017400',email_address: 'sip@mwc.org.sg',website: 'http://www.mwc.org.sg/',latitude: 1.340306694748082, longitude: 103.85713864133348)
