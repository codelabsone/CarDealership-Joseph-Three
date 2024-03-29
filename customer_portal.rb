require_relative 'inventory'
require_relative 'sell_or_trade'
require_relative 'main_menu'
require_relative 'payment_calc'
require_relative 'asterisks'

module Customer_Portal



  def self.welcome

    puts Aster.long
    puts "Welcome to MCCM Cars!"
    puts Aster.long

  end

  def self.help
    puts "Please select an option:"
    puts "1) View inventory"
    puts "2) Sell or trade your vehicle"
    puts "3) Payment calculator"
    puts "0) Back to main menu"
    puts Aster.short
  end

  def self.input

    Customer_Portal.help

    input = gets.chomp

    if input == "1"

      database = CarDatabase.new
      database.create_cars(45)

      puts Aster.short
      puts "#{database}"
      puts Aster.short
      Customer_Portal.input

    elsif input == "2"

      puts Aster.long
      puts "Please answer the following questions about your vehicle."
      puts Aster.long
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
      puts Aster.long
      Customer_Portal.input

    elsif input == "3"

      puts Aster.short
      pay_calc
      puts Aster.long
      Customer_Portal.input

    elsif input == "0"

      puts Main_Menu.landing_menu

    else

      puts Aster.short
      puts "Error, please enter a valid option."
      puts Aster.short
      Customer_Portal.input

    end
  end

  def self.pay_calc
    monthlypayment = Monthly_Payment.new

    puts "Payment Calculator"
    puts "Please enter the price of the vehicle."
    monthlypayment.price = gets.chomp.to_f
    puts "Please enter your down payment."
    monthlypayment.down_payment = gets.chomp.to_f
    puts "How many months will your loan last?"
    monthlypayment.term = gets.chomp.to_f
    puts "What is the annual percent rate?"
    monthlypayment.apr = gets.chomp.to_f

    monthlypayment.your_payment
    puts monthlypayment
  end

end


if __FILE__ == $0
Customer_Portal.welcome
Customer_Portal.input
end
