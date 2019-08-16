require_relative 'inventory'
require_relative 'sell_or_trade'
require_relative 'main_menu'

module Customer_Portal

  def self.ast
    ast = "*".center(80, "*")
  end

  def self.welcome

    puts ast
    puts "Welcome to MCCM Cars!"
    puts ast

  end

  def self.help
    puts "Please select an option:"
    puts "1) View inventory"
    puts "2) Sell or trade your vehicle"
    puts "3) Payment calculator"
    puts "0) Back to main menu"
    puts ast
  end

  def self.input

    Customer_Portal.help

    input = gets.chomp

    if input == "1"

      database = CarDatabase.new
      database.create_cars(45)

      puts ast
      puts "#{database}"
      puts ast

    elsif input == "2"

      puts ast
      puts "Please answer the following questions about your vehicle."
      puts ast
      appraisal = Appraisal.new
      puts "What is your vehicle's brand?"
      appraisal.brand = gets.chomp
      puts "What is your vehicles's model?"
      appraisal.model = gets.chomp
      puts "What is your vehicles's color?"
      appraisal.color = gets.chomp
      puts "What is your vehicles's year?"
      appraisal.year = gets.chomp
      puts "What is your vehicles's mileage?"
      appraisal.mileage = gets.chomp.to_i
      puts "What is your vehicles's condition?"
      appraisal.condition = gets.chomp
      puts appraisal
      puts ast
      Customer_Portal.input

    elsif input == "3"

      puts ast
      puts ast

    elsif input == "0"

      puts ast
      puts Main_Menu.landing_menu


    else

      puts ast
      puts "Error, please enter a valid option."
      puts ast
      Customer_Portal.input

    end
  end
end


if __FILE__ == $0
Customer_Portal.welcome
Customer_Portal.input
end
