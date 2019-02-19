
require "mac/say"
require "Faker"


# puts "uts out what is inside the quots and clears line!!!"
#
# print "Does not clear the line at end"
#
# p "Includes the quote marks


name = "Jozef"
number = 12

# puts name
# puts number
#
# print name
# print number
#
# p name
# p number
#


# puts "hello name"
# puts "double qutes are needed to interpelate #{name}"


#gem install gem-name      to install


test = Faker::Lovecraft.deity

puts test

Mac::Say.say "I am #{test}"
