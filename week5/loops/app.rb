i=0
some_words = ["this", "is", "an", "array", "of", "words"]
some_nums = [1,1,2,3,5,8,13,21,34,55,89]
person = {name: "Jozef", age: 23, city: "Bristol"}

#Basic loop
  # loop do
  #   i+= 1
  #   puts "the value of i is #{i}"
  #   if i > 5
  #     break
  #   end
  # end


# each
  # (0..5).each do |i|
  #   puts "Hello, World!!"
  # end

  # some_words.each_with_index do |dataitem, index|
  #   puts "#{dataitem} is held at index #{index}"
  # end
  # person.each do |key,value|
  #   puts "the key is #{key} and its value is #{value}"
  # end


# while
  # while i < 10
  #   puts "Hello, World!!"
  #   i+=1
  # end


# do while
  # begin
  #   puts "Hello, World!!"
  #   i += 1
  # end while (i  < -1)


#For
  # for i in 0..5
  #   puts "#{i}"
  # end

  # array = []
  # for letter in "a".."z"
  #     array.push letter
  # end
  # print array


# Map
# Map creates a new array that the loop results are stored.
# If you use a ! then the map overwrits the original array with the new one.
  # some_words.map! do |word|
  #   word.reverse.upcase
  # end
  # print some_words

# sum = some_nums.reduce 0 do |total, number|
#   total + number
# end
# puts "#{sum}"

quick_sum = some_nums.reduce(0,:+)
puts "#{quick_sum}"














# placeholder
