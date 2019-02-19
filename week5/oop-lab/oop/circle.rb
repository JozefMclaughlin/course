class Circle

  attr_accessor :radius, :scale

  def initialize (radius, scale = 1)
    @radius = radius
    @scaled_radius = (radius*scale)
  end

  def calculate_area
    (Math::PI) *(@radius**2).to_f
  end

  def calculate_perimeter
    (Math::PI) *2 *@radius
  end
  def scaled_area
    (Math::PI) *(@scaled_radius**2).to_f
  end

  def scaled_perimeter
    (Math::PI) *2 *@scaled_radius
  end
end
