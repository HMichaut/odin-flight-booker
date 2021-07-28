# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create([{ code: 'SFO' }, { code: 'NYC' }, { code: 'PAR' }, { code: 'MAR' }, { code: 'LDN' }, { code: 'LAX' }, { code: 'SHA' }])
Flight.create([{start_airport_id: 1, stop_airport_id: 2, start_datetime: DateTime.new(2007, 11, 19, 8, 37, 48, "-06:00"), flight_duration_in_seconds: 10000},
               {start_airport_id: 2, stop_airport_id: 3, start_datetime: DateTime.new(2008, 11, 19, 8, 37, 48, "-06:00"), flight_duration_in_seconds: 20000},
               {start_airport_id: 3, stop_airport_id: 4, start_datetime: DateTime.new(2009, 11, 19, 8, 37, 48, "-06:00"), flight_duration_in_seconds: 30000},
               {start_airport_id: 4, stop_airport_id: 5, start_datetime: DateTime.new(2010, 11, 19, 8, 37, 48, "-06:00"), flight_duration_in_seconds: 40000}])
