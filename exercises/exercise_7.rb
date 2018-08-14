require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Enter a store name: "
user_store = gets.chomp

new_store = Store.new(name: user_store)


if !new_store.valid?    
    new_store.errors.messages.each do |message|
        puts message
    end
end


