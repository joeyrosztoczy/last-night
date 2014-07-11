require 'faker'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
end


  Party.create(name: Faker::Company.bs, location: "some location")

user_id = 1
5.times do 
  LastNight.create(user_id: user_id, party_id: 1)
  user_id += 1
end