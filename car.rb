

class Car
  attr_accessor :vin, :buy_price, :sell_price, :list_price, :make, :model, :year, :color, :mileage

  def initialize

  end

  def to_s
    "VIN:#{@vin}, #{@year} #{@make} #{@model}, COLOR:#{@color}, MILEAGE:#{@mileage}, \nBUY PRICE: $#{@buy_price}, SELL PRICE: $#{@sell_price}, LIST PRICE: $#{@list_price}."
  end
end
