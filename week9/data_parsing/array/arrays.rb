dragons_array = ["Charizard", "Drogon", "Fluffy", "Toothless", "Niv"]

# Access Charizard
dragons_array[0]
dragons_array.first
dragons_array[-5]

# Access Niv
dragons_array[4]
dragons_array.last
dragons_array[-1]

# Access rndm dragon
dragons_array.sample

dragons_and_rating_array = [["Charizard",6],["Drogon", 2],["Fluffy",10], ["Toothless", 8], ["Niv", 7]]

# Rndm Dragons Rating
puts dragons_and_rating_array.sample.last
