require_relative 'car'
require_relative 'randomizer'

class CarDatabase

  attr_accessor :database

  def initialize
    @database = []
  end

  def to_s
    puts "*******************************"
    puts "These cars are in the database:"

    @database.each do |car|
      puts "#{car.color}"
    end
    "*********************************"
  end

  def add_car     #unfinished method
  @database.push
  end

  def create_cars
    20.times do
      @database.push(Randomizer.random_car)
    end
  end

end

database = CarDatabase.new
database.create_cars
puts database
