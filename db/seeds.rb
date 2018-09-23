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