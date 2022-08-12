# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.create(name: 'Hartsfield–Jackson Atlanta International Airport', code: 'ATL')
Airport.create(name: 'Dallas Fort Worth International Airport', code: 'DFW')
Airport.create(name: 'Denver International Airport', code: 'DEN')
Airport.create(name: "O'Hare International Airport", code: 'ORD')
Airport.create(name: 'Los Angeles International Airport', code: 'LAX')
Flight.create(duration: '4 hours', start: Time.current, arrival_id: 1, departure_id: 2)
Flight.create(duration: '6 hours', start: Time.current, arrival_id: 2, departure_id: 3)
Flight.create(duration: '2 hours', start: Time.current, arrival_id: 1, departure_id: 4)
Flight.create(duration: '3 hours', start: Time.current, arrival_id: 4, departure_id: 3)
Flight.create(duration: '8 hours', start: Time.current, arrival_id: 3, departure_id: 1)
Flight.create(duration: '3 hours', start: Time.current, arrival_id: 2, departure_id: 1)
Flight.create(duration: '3 hours', start: Time.current + 1.day, arrival_id: 2, departure_id: 1)
Flight.create(duration: '3 hours', start: Time.current + 2.days, arrival_id: 2, departure_id: 1)
Flight.create(duration: '3 hours', start: Time.current + 3.days, arrival_id: 2, departure_id: 1)
Flight.create(duration: '3 hours', start: Time.current + 4.days, arrival_id: 2, departure_id: 1)
