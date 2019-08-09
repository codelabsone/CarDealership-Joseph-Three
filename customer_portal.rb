module Customer_Portal

  def self.welcome

    puts "****************************************"
    puts "Welcome to MCCM Cars!"
    puts "****************************************"

  end

  def self.help
    puts "Please select an option:"
    puts "1) view inventory"
    puts "2) sell or trade your vehicle"
    puts "3) payment calculator"
    puts "4) exit"
    puts "****************************************"
  end

  def self.input

    Customer_Portal.help

    input = gets.chomp

    if input == "1"

      puts "****************************************"
      puts "hi"
      puts "****************************************"

    elsif input == "2"

      puts "****************************************"
      puts "hello"
      puts "****************************************"

    elsif input == "3"

      puts "****************************************"
      puts "hola"
      puts "****************************************"

    elsif input == "4"

      puts "****************************************"
      puts "nice"
      puts "****************************************"

    else

      puts "****************************************"
      puts "Error, please enter a valid option."
      puts "****************************************"
      puts "Please select an option:"
      puts "1) view inventory"
      puts "2) sell or trade your vehicle"
      puts "3) payment calculator"
      puts "4) exit"
      puts "**************************************************"

    end
  end
end

Customer_Portal.welcome
Customer_Portal.input
