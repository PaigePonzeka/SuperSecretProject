# Populating the database with sample Users
namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    
    # create Sample users 
    User.create!(:name => "Paige",
                 :email => "paigepon@gmail.com",
                 :password => "password",
                 :password_confirmation => "password")
    User.create!(:name => "Christine",
                  :email => "chao@gmail.com",
                  :password => "password",
                  :password_confirmation => "password")
    98.times do |n|
      name  = Faker::Internet.user_name
      email = "example-#{n+1}@example.com"
      password  = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
    
    #Create Sample Places
    Place.create!(:name => "Qdoba",
                 :street => "120 University Place",
                 :city => "New York",
                 :zipcode => 10003,
                 :phone => "(542)434-4343",
                 :yelp => "http://www.yelp.com/biz/qdoba-mexican-grill-manhattan-3")
    99.times do |n|
      name = Faker::Company.name
      street= Faker::Address.street_address(include_secondary=false)
      city = Faker::Address.city
      zipcode = Faker::Address.zip_code
      phone = Faker::PhoneNumber.phone_number
      yelp = "http://www.yelp.com/biz/qdoba-mexican-grill-manhattan-3"
      Place.create!(:name => name,
                   :street => street,
                   :city => city,
                   :zipcode => zipcode,
                   :phone => phone,
                   :yelp => yelp)
    end
    
    # Create Sample Groups
    Group.create!(:name => "The Gang")
    
    99.times do |n|
      name = Faker::Lorem.words(num=1)
      Group.create!(:name => name)
    end
     
    # Create Group_Members
      # Add Two Demo Users to the first group "The Gang"
      GroupMember.create!(:user_id => 1,
                           :group_id => 1 )
      GroupMember.create!(:user_id => 2,
                           :group_id => 1)
      GroupMember.create!(:user_id => 1,
                           :group_id => 4 )
      GroupMember.create!(:user_id => 1,
                           :group_id => 5 )
       1000.times do |n|
         # generate random numbers to simulate users in groups
         user_id = 1 + rand(100)
         group_id = 1 + rand(100)
         GroupMember.create!(:user_id => user_id,
                               :group_id => group_id)
       end
    # Create Rounds
      Round.create!(:group_id => 1,
                    :name => "Lunch")
      Round.create!(:group_id => 1,
                    :name => "Dinner")
      Round.create!(:group_id => 1,
                    :name => "Drinks")
  
      1000.times do |n|
        # generate random number to associate to a group
        group_id = 1 + rand(100)
        name = "Lunch"
        Round.create!(:group_id => group_id,
                      :name => name)
      end
      
    #Create Nominations
      Nomination.create!(:round_id => 1,
                         :place_id => 1,
                         :user_id => 1)
      Nomination.create!(:round_id => 2,
                        :place_id => 1,
                        :user_id => 1)
      Nomination.create!(:round_id => 3,
                         :place_id => 1,
                         :user_id => 2)
      Nomination.create!(:round_id => 2,
                        :place_id => 1,
                        :user_id => 2)
       5.times do |n|
          # generate random number to associate to a group
          place_id = 1 + rand(100)
          Nomination.create!(:round_id => 1,
                        :place_id => place_id,
                        :user_id => 1)
        end

    
    #Create Votes
      Vote.create!(:user_id =>1,
                   :round_id =>2,
                   :place_id =>1, 
                   :count => 5
                  )
      Vote.create!(:user_id =>2,
                   :round_id =>2,
                   :place_id =>1, 
                   :count => -3
                  )

    
    
  end
end