#------Commands to create website------
#%Create the initial application.
rails new ClubBiz

#%Create static webpages.
#%Controller: home_controller
#%Pages: index, about, login
cd ClubBiz	
rails generate controller Home index about login

#% Generate event scaffold.
rails generate scaffold event name:string location:string  date:string startTime:string endTime:string description:string membersOnly:boolean
#% Generate society scaffold.
rails generate scaffold society name:string description:string membershipFee:float verified:boolean

#% Add user model with the ability to sign in.
#% Follow Devise instructions in Workshop 4 Part 4.
echo "gem 'devise'" >> Gemfile
bundle install
bundle update
rails generate devise:install
#%The email and password fields are required automatically by Devise.
rails generate devise User firstName:string lastName:string phoneNum:string address:string
rails generate devise:views

#% Update the database
rake db:migrate
