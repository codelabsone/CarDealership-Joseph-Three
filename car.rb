

class Car
  attr_accessor :vin, :buy_price, :sell_price, :list_price, :make, :model, :year, :color, :mileage

  def initialize

  end

  def to_s
    "VIN:#{@vin}, BUY PRICE: $#{@buy_price}, SELL PRICE: $#{@sell_price}, LIST PRICE: $#{@list_price}, MAKE:#{@make}, MODEL:#{@model}, YEAR:#{@year}, COLOR:#{@color}, MILEAGE:#{@mileage}."
  end
end
