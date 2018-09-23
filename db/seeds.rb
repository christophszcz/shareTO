# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(first_name: 'Bob', last_name: 'Bobbert', email: 'bob@bob.com', password: '123', password_confirmation: '123')

location1  = Location.create(name: 'toronto')
event1 = Event.create(name: 'some event', location_id: location1.id)

user1.visits.create(event_id: event1.id)

user1.items.create(name: 'Tennis Rackquet', condition: 'good', location_id: location1.id)

user2 = User.create(first_name: 'David', last_name: 'Dela Cruz')
# user2.visits.create()
location2  = Location.create(name: 'San Francisco')
event2 = Event.create(name: 'Elevate Hackathon', location_id: location2.id)
user2.visits.create(event_id: event2.id)
user2.items.create(name: 'vacuum', condition: 'good', location_id: location2.id)

#######

user3 = User.create(first_name: 'Yuki', last_name: 'Ke Xi')
# user3.visits.create()
location3  = Location.create(name: 'Shanghai')
event3 = Event.create(name: 'BTS Concert', location_id: location3.id)
user3.visits.create(event_id: event3.id)
user3.items.create(name: 'slow cooker', condition: 'good', location_id: location3.id)

########
user4 = User.create(first_name: 'Jona', last_name: 'Seoul')
# user4.visits.create()
location4  = Location.create(name: 'Singapore')
event4 = Event.create(name: 'Hiking', location_id: location4.id)
user4.visits.create(event_id: event4.id)
user4.items.create(name: 'Power drill', condition: 'good', location_id: location4.id)

######

user5 = User.create(first_name: 'Chris', last_name: 'Leader')
# user5.visits.create()
location5  = Location.create(name: 'Winnipeg')
event5 = Event.create(name: 'Filipinos in Tech', location_id: location5.id)
user5.visits.create(event_id: event5.id)
user5.items.create(name: 'Racquet', condition: 'good', location_id: location5.id)

#######

user6 = User.create(first_name: 'Anmol', last_name: 'Anand')
# user6.visits.create()
location6  = Location.create(name: 'Mississauga')
event6 = Event.create(name: 'Executive MBA Session', location_id: location6.id)
user6.visits.create(event_id: event6.id)
user6.items.create(name: 'Golf clubs', condition: 'good', location_id: location6.id)

#######

user7 = User.create(first_name: 'Clark', last_name: 'Kent')
# user7.visits.create()
location7  = Location.create(name: 'Kansas')
event7 = Event.create(name: 'Journalist Association', location_id: location7.id)
user7.visits.create(event_id: event7.id)
user7.items.create(name: 'Glasses', condition: 'good', location_id: location7.id)

########

user8 = User.create(first_name: 'Bruce', last_name: 'Wayne')
# user8.visits.create()
location8  = Location.create(name: 'Gotham')
event8 = Event.create(name: 'Justice Prevention', location_id: location9.id)
user9.visits.create(event_id: event9.id)
user9.items.create(name: 'Batmobile', condition: 'good', location_id: location9.id)