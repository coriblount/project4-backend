# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Goal.destroy_all
ListItem.destroy_all
Appointment.destroy_all
FinanceItem.destroy_all
Trip.destroy_all

user2 = User.create(name: "Cori", username: "cori", password: "cori")
user1 = User.create(name: "Adri", username: "adri", password: "adri")
user3 = User.create(name: "Udenna", username:"udenna", password: "udenna")

goal1 = Goal.create(name:"Exercise more often", start: 1, completion: 7, user_id: user1.id)
goal2 = Goal.create(name: "Sleep 7-9 hours every night", start: 2, completion: 7, user_id: user1.id)
goal3 = Goal.create(name: "Drink 1 bottle of water!", start: 3, completion: 7, user_id: user1.id)


list_item1 = ListItem.create(name: "meditate", user_id: user1.id)
list_item2 = ListItem.create(name: "walk dog", user_id: user1.id)


appointment1 = Appointment.create(name: "Doctor follow-up", date: "Aug 10, 2021", time: "1pm", user_id: user1.id)
appointment2 = Appointment.create(name: "Veterinarian Appointment", date: "Jun 1, 2021", time: "5pm", user_id: user1.id)
appointment3 = Appointment.create(name: "Tech Meet-Up", date: "May 30, 2021", time: "2pm", user_id: user1.id)
appointment4 = Appointment.create(name: "Project Presentation", date: "May 14, 2021", time: "11am", user_id: user1.id)
appointment6 = Appointment.create(name: "Hair Appointment", date: "Jun 7, 2021", time: "12pm", user_id: user1.id)
appointment7 = Appointment.create(name: "Dinner at Patricia's", date: "May 15, 2021", time: "7pm", user_id: user1.id)
appointment9 = Appointment.create(name: "Tennis", date: "May 25, 2021", time: "10am", user_id: user1.id)

finance_items1 = FinanceItem.create(name: "rent", amount: "$700", month: "May", user_id: user1.id)
finance_items2 = FinanceItem.create(name: "trip" , amount:"$200", month: "June", user_id: user1.id)
finance_items3 = FinanceItem.create(name: "new monitor", amount:"$370", month:"May", user_id: user1.id)
finance_items4 = FinanceItem.create(name: "books", amount: "$198", month: "May", user_id: user1.id)
finance_items5 = FinanceItem.create(name: "coffee" , amount:"$1000", month: "July", user_id: user1.id)
finance_items6 = FinanceItem.create(name: "cat expenses", amount:"$250", month:"July", user_id: user1.id)
finance_items7 = FinanceItem.create(name: "credit card", amount: "$500", month: "May", user_id: user1.id)
finance_items8 = FinanceItem.create(name: "car insurance" , amount:"$200", month: "June", user_id: user1.id)
finance_items9 = FinanceItem.create(name: "gym membership", amount:"$100", month:"May", user_id: user1.id)

trip1 = Trip.create(name:"girls trip", date:"july 10, 2021", destination:"Miami", user_id: user1.id )
trip2 = Trip.create(name: "business trip", date:"may 7, 2021", destination:"San francisco", user_id: user1.id )
trip3 = Trip.create(name:"visit family", date:"june 5, 2021", destination:"Hawaii", user_id: user1.id )
trip4 = Trip.create(name:"world tour", date:"july 21, 2021", destination:"Everywhere", user_id: user1.id )
trip5 = Trip.create(name: "europe trip", date:"may 30, 2021", destination:"Somewhere in Europe", user_id: user1.id )
trip6 = Trip.create(name:"disney land", date:"june 7, 2021", destination:"Los Angeles", user_id: user1.id )




