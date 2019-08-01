require_relative 'car'

module Randomizer
attr_reader :vin, :buy_price, :sell_price, :list_price, :make, :model, :year, :color, :mileage

  def self.random_car
    car = Car.new
    car.vin = self.random_vin
    car.buy_price = self.random_buy_price
    car.sell_price = self.random_sell_price
    car.list_price = self.random_list_price
    car.make = self.random_make
    car.model = self.random_model
    car.year = self.random_year
    car.color = self.random_color
    car.mileage = self.random_mileage

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
