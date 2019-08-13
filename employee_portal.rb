#Welcome, MCCM employee. Please enter your name
# gets.chomp.downcase
# Thanks, #{@name}. Please enter your password.
# gets.chomp

# What would you like to do?
#   1) see inventory
#   2) add a car
#   3) remove a car
#   4) exit
require 'rubygems'
require 'highline/import'
require_relative 'inventory'
#you must install ruby gem 'highline'
#command prompt -> gem install highline
class Employee_Portal

  def initialize ()

  end
  def welcome
    puts "Welcome, MCCM employee. Please enter your name, or press 0 for the main menu"

    input = gets.chomp.downcase
      if input == "0"
        #goto Main_Menu
      else
        puts "Please enter your password:"
      end
    end
end
