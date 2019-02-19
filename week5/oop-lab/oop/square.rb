class Square

  @@square_count = 0
  attr_accessor :length, :scale


  def initialize (length, scale = 1)
    @length = length
    @scaled_length = (length*scale)
    count
  end

  def calculate_area
    @length ** 2
  end

  def calculate_perimeter
    @length * 4
  end
  def scaled_area
    @scaled_length ** 2
  end

  def scaled_perimeter
    @scaled_length * 4
  end
  def count
    @@square_count += 1
    puts "You have #{@@square_count} squares."
  end

  def self.count
    @@square_count
  end
end
