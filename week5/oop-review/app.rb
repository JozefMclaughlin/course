require_relative "duck.rb"



duck1 = Duck.new "orange", "Frank", "unit"
duck2 = Duck.new "blue", "Howard", "small"
duck1.speak

duck1.description
duck2.description
duck2.update_name "Stephanie"

duck2.description


puts Duck.duck_names
