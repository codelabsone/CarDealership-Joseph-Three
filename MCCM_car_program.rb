require_relative 'car'
require_relative 'inventory'
require_relative 'Main_Menu'



database = CarDatabase.new
database.create_cars(7)

text = "Welcome to MCCM Cars!"
puts text.center(50,'*')

Main_Menu.reset_input
