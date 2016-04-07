
class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

# homes = [
#   Home.new("Nizar's place", "San Juan", 2, 42),
#   Home.new("Fernando's place", "Seville", 5, 47),
#   Home.new("Josh's place", "Pittsburgh", 3, 41),
#   Home.new("Gonzalo's place", "Málaga", 2, 45),
#   Home.new("Ariel's place", "San Juan", 4, 49)
# ]
#
# # homes.each { |hm|
# #   puts "#{hm.name} in #{hm.city}";
# #   puts "Capacity of #{hm.capacity}"
# # }
#
# #puts avg = homes.map { |hm| hm.price }.reduce{|a,b| a+b }/ homes.length
#
# #puts homes.find{|hm|hm.capacity == 2}.name
#
# sorted = homes.sort do |home1, home2|
#   # Compare the two homes by their capacity
#   home2.capacity <=> home1.capacity
# end
# sorted.each {|hm| puts hm.name}


homes = [
  Home.new("Ed's place", "Charlotte", 2, 42),
  Home.new("Nando's place", "Atlanta", 5, 47),
  Home.new("Joe's place", "Asheville", 3, 41),
  Home.new("Gonzo's place", "Miami", 2, 45),
  Home.new("Ari's place", "Richmond", 4, 49)
]

# homes.each {|hm| puts "The name of the home is #{hm.name}"}
# puts ""
#
# puts "Would you like the homes ordered from cheapest to most expensive? If so, enter \"y\" or \"n\""
# order = gets.chomp
#
# order == "y" ?
#   homes.sort! { |a,b| a.price <=> b.price } :
#   homes.sort! { |a,b| b.price <=> a.price }
#
# homes.each {|hm| puts "Price: #{hm.price} -- name of the home is #{hm.name} "}
#   puts ""
#
# puts "Would you like the homes ordered by capacity? If so, enter \"y\" or \"n\""
# cap = gets.chomp

# if order == "y"
#    homes.sort! { |a,b| a.capacity <=> b.capacity }
#    homes.each {|hm| puts "Capacity: #{hm.capacity} -- name of the home is #{hm.name} "}
# end

puts "Enter in the name of a city for a list of homes in that city. Otherwise just hit enter."
cityname = gets.chomp

if homes.select{|hm| hm.city.capitalize == cityname }.length > 0
    homes.select{|hm| hm.city.capitalize == cityname }
    .each {|hm| puts "Price: #{hm.price} -- name of the home is #{hm.name} "}
end

avg = homes.map{|hm| hm.price}.reduce(:+)/homes.length
puts "\n\nThe average home price is #{avg}"

puts "Enter in a specific price to see homes at that price."
special_price = gets.chomp.to_i

it =  homes.find{|hm| hm.price == special_price }


puts "The home's capacity: #{it.capacity} -- name of the home is #{it.name}"
