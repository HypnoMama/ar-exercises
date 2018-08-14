require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...


# Store.create('Burnaby', 300000, true, true)
# Store.create('Richmond', 1260000, false, true)
# Store.create('Gastown', 190000, true, false)
# puts Store.count

Store.create name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true
Store.create name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true
Store.create name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false
puts Store.count