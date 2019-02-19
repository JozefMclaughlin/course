# return an array of reversed words
def reverse_array_of_strings words
  words.map {|word| word.reverse}
end

# return all the even numbers less than the given number
def even_numbers_less_than num
  array=[]
  i = 0
  begin
    if (i % 2 == 0)
      array.push (i)
    end
  i+=1
  end while ( i  < num)
 array
end

# return the average of all numbers in an array
def average numbers
  numbers.reduce(0,:+)/ numbers.length.to_f
end
