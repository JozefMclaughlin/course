require_relative "oop/square.rb"
require_relative "oop/rectangle.rb"
require_relative "oop/circle.rb"

# Last value scales the shape
square1 = Square.new(5, 10)
square2 = Square.new(3, 3)
square3 = Square.new(1, 8)
rectangle1 = Rectangle.new(5, 2, 10)
circle1 = Circle.new(1, 10)


puts Square.count


puts "Area: #{square1.calculate_area} Perimeter: #{square1.calculate_perimeter}"

puts "Scaled Area: #{square1.scaled_area} Scaled Perimeter: #{square1.scaled_perimeter}"
#
# puts "Rectangle Area: #{rectangle1.calculate_area} Rectangle Perimeter: #{rectangle1.calculate_perimeter}"
#
# puts "Scaled Rectangle Area: #{rectangle1.scaled_area} Scaled Rectangle Perimeter: #{rectangle1.scaled_perimeter}"
#
# puts "Circle Area: #{circle1.calculate_area} Circle Circumfrance: #{circle1.calculate_perimeter}"
#
# puts "Scaled Circle Area: #{circle1.scaled_area} Scaled Circumfrance: #{circle1.scaled_perimeter}"
