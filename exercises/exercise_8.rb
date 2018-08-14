require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'


@store1.employees.create(first_name: 'Helen', last_name: 'Herme', hourly_rate: 100)

helen = Employee.where(first_name: 'Helen')

puts helen[0].password
