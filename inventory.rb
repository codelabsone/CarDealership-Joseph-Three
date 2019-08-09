require_relative 'car'
require_relative 'randomizer'

class CarDatabase

  attr_accessor :database
  #attr_accessor :vin, :buy_price, :sell_price, :list_price, :make, :model, :year, :color, :mileage
  def initialize
    @database = []
  end

  def to_s
    puts "*******************************"
    puts "These cars are in the database:"

    @database.each do |car|
      puts "#{car.color} #{car.make} #{car.model}"
    end
    "*********************************"
  end

  def add_random_car     #adds a random car to the @database array
    @database.push(Randomizer.random_car)
  end

  def add_specific_car    #adds a specific car to teh @database array using inputs from command line
    car = Car.new
    puts "What is the VIN of the car"
    car.vin = gets.chomp

    puts "What is the buy price of the car"
    car.buy_price = gets.chomp

    puts "What is the sell price of the car"
    car.sell_price = gets.chomp

    puts "What is the list price of the car"
    car.list_price = gets.chomp

    puts "What is the make of the car"
    car.make = gets.chomp

    puts "What is the model of the car"
    car.model = gets.chomp

    puts "What is the year of the car"
    car.year = gets.chomp

    puts "What color is the car"
    car.color = gets.chomp

    puts "How many miles does the car have?"
    car.mileage = gets.chomp

    @database.push(car)

  end

  def create_cars(times)
    1.upto(times) do
      @database.push(Randomizer.random_car)
    end
  end


end

if __FILE__ == $0
database = CarDatabase.new
database.create_cars
puts database
database.add_random_car
puts database
database.add_specific_car
puts database
end
