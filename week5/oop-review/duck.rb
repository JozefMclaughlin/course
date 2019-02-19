class Duck

  @@names_of_ducks = []

  attr_accessor  :colour, :size
  attr_reader :name
  def initialize ( colour, name, size)
    puts "you made a duck"
    @colour = colour
    @name = name
    @size = size
    add_duck_name
  end

  def speak
    puts"Quack, QUACK!!!"
  end
  def description
    puts "my name is #{@name} I am a #{@colour} coloured duck that is #{@size}"
  end

  def update_name name
    @name = name
  end

  def add_duck_name
    @@names_of_ducks.push @name
    # print @@names_of_ducks
  end

  def self.duck_names
    @@names_of_ducks
  end
end
