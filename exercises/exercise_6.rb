require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: 'Sarah', last_name: 'Sifert', hourly_rate: 100)
@store1.employees.create(first_name: 'Eric', last_name: 'DuTemps', hourly_rate: 20)
@store1.employees.create(first_name: 'Bob', last_name: 'Thompson', hourly_rate: 10)
@store1.employees.create(first_name: 'Sam', last_name: 'Wilson', hourly_rate: 50)
@store1.employees.create(first_name: 'Kalika', last_name: 'Hermsen', hourly_rate: 100)

@store2.employees.create(first_name: 'Lalita', last_name: 'Hermsen', hourly_rate: 100)
@store2.employees.create(first_name: 'John', last_name: 'Geddes', hourly_rate: 50)
@store2.employees.create(first_name: 'Corey', last_name: 'Taylor', hourly_rate: 25)
@store2.employees.create(first_name: 'Annabelle', last_name: 'Underwood', hourly_rate: 62)