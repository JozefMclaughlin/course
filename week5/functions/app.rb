def say_hello(name)
  puts "Hello #{name}"
end

def say_bye name
  puts "Bye #{name}"
end


def add_nums (num1, num2=4)
  num1 + num2
# by default the function will return theblast statement that is run
end

def create_user (name, course="eng23")
  puts "#{name} is on course #{course}"
end


#Splat
def say_some_words (*words)
  puts words
end

def students (course, *people, location)
  people.each do |person|
    puts "#{person} is on #{course} in #{location}"
  end
end
# say_hello "Jozef"
# # the definition must be definied before you call a function
#
# add_nums(3,76)
# # default value is present but can be overwritten if provided
# add_nums(12)
# create_user("test")
#
# say_bye "Jozef"


# say_some_words("hello", "this", "is", "some", "words")
#
# students ("eng23", "Ashley", "CJ", "Abdul", "Milly", "Birmingham")


# gets = get a string from the user
# number = gets.chomp.to_i
#In ther above number in equal to an inputed value that has had the final keystroke (enter) removed and then converted from a string to an integer. 

puts add_nums(3, 45)
