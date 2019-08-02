require_relative 'car'

module Randomizer

  def self.random_car
    @vin = self.random_vin
    @buy_price = self.random_buy_price
    @sell_price = self.random_sell_price
    @list_price = self.random_list_price
    @make = self.random_make
    @model = self.random_model
    @year = self.random_year
    @color = self.random_color
    @mileage = self.random_mileage
    car = Car.new(@vin,@buy_price,@sell_price,@list_price,@make,@model,@year,@color,@mileage)
  end

  def self.random_vin
    rand(00000000000000000..99999999999999999).to_s
  end

  def self.random_buy_price
    rand(00001..99999)
  end

  def self.random_sell_price
    rand(00001..99999)
  end

  def self.random_list_price
    rand(00000..99999)
  end

  def self.random_make
    ['Ford', 'Chevrolet', 'Toyota', 'Tesla', 'Dodge', 'Honda'].sample
  end

  def self.random_model
    ['Mustang', 'Cruze', 'Corolla', 'Roadster', 'Ram', 'Odyssey'].sample
  end

  def self.random_year
    rand(1989..2019).to_s
  end

  def self.random_color
    ['Red', 'Blue', 'Yellow', 'White', 'Black', 'Gray'].sample
  end

  def self.random_mileage
    rand(000000..999999)
  end
end

if __FILE__ == $0
puts Randomizer.random_car
puts Randomizer.random_vin
puts Randomizer.random_buy_price
puts Randomizer.random_sell_price
puts Randomizer.random_list_price
puts Randomizer.random_make
puts Randomizer.random_model
puts Randomizer.random_year
puts Randomizer.random_color
puts Randomizer.random_mileage
end
