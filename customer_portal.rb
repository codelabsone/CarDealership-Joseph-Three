require_relative 'inventory'
require_relative 'sell_or_trade'
require_relative 'main_menu'

module Customer_Portal

  def self.welcome

    puts "********************************************************************************"
    puts "Welcome to MCCM Cars!"
    puts "********************************************************************************"

  end

  def self.help
    puts "Please select an option:"
    puts "1) View inventory"
    puts "2) Sell or trade your vehicle"
    puts "3) Payment calculator"
    puts "0) Exit"
    puts "********************************************************************************"
  end

  def self.input

    Customer_Portal.help

    input = gets.chomp

    if input == "1"

      database = CarDatabase.new
      database.create_cars(45)

      puts "********************************************************************************"
      puts "#{database}"
      puts "********************************************************************************"

    elsif input == "2"

      puts "********************************************************************************"
      puts "Please answer the following questions about your vehicle."
      puts "********************************************************************************"
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
      puts "********************************************************************************"

    elsif input == "3"

      puts "********************************************************************************"
      puts "hola"
      puts "********************************************************************************"

    elsif input == "0"

      puts "********************************************************************************"
      puts Main_Menu.landing_menu
      puts "********************************************************************************"

    else

      puts "********************************************************************************"
      puts "Error, please enter a valid option."
      puts "********************************************************************************"
      puts "Please select an option:"
      puts "1) view inventory"
      puts "2) sell or trade your vehicle"
      puts "3) payment calculator"
      puts "0) exit"
      puts "********************************************************************************"

    end
  end
end


if __FILE__ == $0
Customer_Portal.welcome
Customer_Portal.input
end
