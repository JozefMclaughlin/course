class Rectangle

  attr_accessor :length, :width, :scale


  def initialize (length, width ,scale = 1)
    @length = length
    @width = width
    @scaled_length = length*scale
    @scaled_width = width*scale
  end

  def calculate_area
    @length * @width
  end

  def calculate_perimeter
    (@length * 2) + (@width * 2)
  end

  def scaled_area
    @scaled_length * @scaled_width
  end

  def scaled_perimeter
    (@scaled_length * 2) + (@scaled_width * 2)
  end
end
