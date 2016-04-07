require_relative "stringcalculator.rb"
calculator = StringCalculator.new

puts calculator.add("7,6") == 13
puts calculator.add("5") == 5
puts calculator.add("") == 0

puts calculator.add("7,6,3") == 16
