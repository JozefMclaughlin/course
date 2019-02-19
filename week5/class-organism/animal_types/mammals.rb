module Mammals

  def self.common_traits
    puts "All mammals have vertebrae."
  end

  class SharedTraits
    def feed_young
      puts "I like milk"
    end
  end
  class Biped < SharedTraits
    def self.legs
        puts "I have 2 legs"
    end
  end
  class Quadruped < SharedTraits
    def self.legs
      puts "I have 4 legs"
    end
  end
end
# Mammals.common_traits

human = Mammals::Biped.new

# human.legs
# human.feed_young


dog = Mammals::Quadruped.new

# dog.feed_young
