require 'pry'
require_relative "./models/menu_item"
require_relative "./models/restaurant"

# test your code here!
# create a few new restaurant instances and menu item instances
# make sure you initialize them with the correct data 
  # (how does a menu item know which restaurant it belongs to?)

chipotle = Restaurant.new("Chipotle", "Mexican?")
roti = Restaurant.new("Roti", "Mediterranean")

burrito = MenuItem.new(chipotle, "bean burrito", 8)
taco = MenuItem.new(chipotle, "beef taco", 3)
taco_salad = MenuItem.new(chipotle, "taco salad", 10)
falafel = MenuItem.new(roti, "falafel salad", 9)
pita = MenuItem.new(roti, "pita bread", 2)

binding.pry
"pls"