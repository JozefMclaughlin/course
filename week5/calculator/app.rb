def addition (num1, num2)
  num1 + num2
end
def subtraction(num1, num2)
  num1 - num2
end
def multiplication(num1, num2)
  num1 * num2
end
def division(num1, num2)
  num1 / num2
end
def power(num1, num2)
  num1**num2
end
def square_root(num1)
  Math.sqrt(num1)
end
def BMImetric (weight, height)
  weight/(height*0.01)**2
end
def BMIimperial (weight, height)
  (weight/(height**2)) *703
end
def time (speed, distance)
  distance / speed
end
def cost (distance, mpg, price)
  (distance/mpg)*price
end

puts "Please chose an option: (1)simple operators; (2)advanced operators; (3)BMI calculator; (4)Trip calculator "
selection = gets.chomp

if (selection == "1")
  puts "Please select an oppertion: (a)ddition, (s)ubtraction, (m)ultiplication, (d)ivision "
  opperator = gets.chomp

  puts "Please input first number:"
  number1 = gets.chomp.to_f
  puts "Please input first number:"
  number2 = gets.chomp.to_f

  case opperator
  when "a"
    puts "Your result is:"
    puts addition(number1, number2)
  when "s"
    puts "Your result is:"
    puts subtraction(number1, number2)
  when "m"
    puts "Your result is:"
    puts multiplication(number1, number2)
  when "d"
    puts "Your result is:"
    puts division(number1, number2)
  end
  elsif (selection=="2")
    puts "Please select an oppertion: (p)owers, (s)quare root"
    advopperator = gets.chomp
    case advopperator
    when "p"
      puts "Please input first number:"
      number1 = gets.chomp.to_f
      puts "Please input first number:"
      number2 = gets.chomp.to_f
      puts "Your result is:"
      puts power(number1, number2)
    when "s"
      puts "Please input your number:"
      number1 = gets.chomp.to_f
      puts "Your result is:"
      puts square_root(number1)
    end
  elsif (selection=="3")
    puts "(1)Imperial or (2)Metric?"
    units = gets.chomp.to_i
    if units == 1
      puts "What is your height? (Inches)"
      height = gets.chomp.to_f
      puts "What is your weight? (lbs)"
      weight = gets.chomp.to_f
      puts "Your BMI is:"
      puts (BMIimperial(weight, height))
    else

      puts "What is your height? (cms)"
      height = gets.chomp.to_f
      puts "What is your weight? (kgs)"
      weight = gets.chomp.to_f
      puts "Your BMI is:"
      puts BMImetric(weight, height)
    end
  elsif (selection == "4")
    puts "How far are you travelling? (Miles)"
    distance = gets.chomp.to_f
    puts "What will your average speed be? (MPH)"
    speed = gets.chomp.to_f
    puts "What is your fuel efficiency? (mpg)"
    mpg = gets.chomp.to_f
    puts "What is the price of fuel? (£pg)"
    price = gets.chomp.to_f
    puts "It will take you #{time(speed,distance)} hours and cost £#{cost(distance,mpg,price)}"
end
