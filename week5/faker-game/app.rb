require "Faker"
alive = 1
location = 1
monster = Faker::ElderScrolls.creature
boss = Faker::Lovecraft.deity
npc = Faker::StarTrek.character
quote = Faker::VForVendetta.quote
death = Faker::FamousLastWords.last_words
puts "Welcome to a World of Adventure."
puts "Explore and try to find the holy grail but beware dangers are around every corner."
puts "Move by using the cardinal directions, (n)orth, (s)outh, (e)ast and (w)est."
puts "Now to star on your quest:"
puts "\n"
puts "\n"
puts "\n"
begin
  if (location == 1)
    puts "You are in the clearing of a forest, to the south you can hear water flowing and to the North-West you see a mountain over the trees."
    direction = gets.chomp
    case direction
    when "n"
      puts "You head north into the forest"
      location = 11
    when "e"
      puts "You fight your way through the thick undergrowth of the forest."
      puts "With no clear path you stumble around aimlessly untill..."
      location = 5
    when "w"
      puts "You head West through the trees"
      location = 2
    when "s"
      puts "You head south towards the sound of water."
      puts "You come across a beautiful river, with fairies playing in the air and a unicorn frolicking on the far shore."
      puts "As you approach the river you feel your foot slip and your crashes into the ground"
      alive = 0
    end
  elsif (location == 2)
    puts "You come across a path heading from south to north."
    direction = gets.chomp
    case direction
    when "n"
      puts "You follow the road north"
      location = 22
    when "e"
      puts "You head East through the forest."
      location = 1
    when "w"
      puts "You head West through the trees"
      location = 3
    when "s"
      puts "You folow the road south."
      puts "You come across a bridge crossing a river, as you cross the bridge you hear the it creak and then it suddenly collapses beneath you."
      puts "You crash into the waters below and thrown around by the current as the wrekage crashes into. A sharp blow crashes into your head and you begin to bleed heavily before the river deposits you onto the shore."
      alive = 0
    end
  elsif (location == 3)
    puts "You find a small track leading West to the side of it you see a sign that says."
    p "Warning, Pixies ahead"
    direction = gets.chomp
    case direction
    when "n"
      puts "You head north into the wood"
      location = 23
    when "e"
      puts "You head East along the trail, paying no heed to the sign."
      location = 4
    when "w"
      puts "You head West towards the road."
      location = 2
    when "s"
      puts "You head South."
      puts "As you walk you begin to feel dizzy and lose your sense of direction."
      puts "You find yourself back where you started"
      location = 3
    end
  elsif (location == 4)
    puts "You are deep within the pixie woods."
    direction = gets.chomp
    case direction
    when "n"
      puts "You hear the sound of snikering pixes as you walk."
      location = 24
    when "e"
      puts "You head East through the forest."
      location = 3
    when "w"
      puts "You hear the sound of snikering pixes as you walk."
      location = 5
    when "s"
      puts "You hear the sound of snikering pixes as you walk."
      location = 24
    end
  elsif (location == 5)
    puts "You are deep within the pixie woods."
    direction = gets.chomp
    case direction
    when "n"
      puts "You follow the road north"
      location = 25
    when "e"
      puts "You head East through the forest."
      location = 4
    when "w"
      puts "You head West through the trees"
      location = 4
    when "s"
      puts "You follow the road north"
      location = 25
    end

  end
end while (alive == 1)

puts "As you lie there bleeding into the ground, all you can think to yourself is:"
puts "#{death}"
puts "Your consciousness then fades and you fall into the dark embrace of death."
