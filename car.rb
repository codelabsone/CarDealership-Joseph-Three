class Car
  attr_accessor :vin, :buy_price, :sell_price, :list_price, :make, :model, :year, :color, :mileage

  def initialize(vin,buy_price,sell_price,list_price,make,model,year,color,mileage)
    @vin = vin
    @buy_price = buy_price
    @sell_price = sell_price
    @list_price = list_price
    @make = make
    @model = model
    @year = year
    @color = color
    @mileage = mileage
  end

  def to_s
    "VIN:#{@vin}, #{@year} #{@make} #{@model}, COLOR:#{@color}, MILEAGE:#{@mileage} \nBUY PRICE: $#{@buy_price}, SELL PRICE: $#{@sell_price}, LIST PRICE: $#{@list_price}."
  end
end

if __FILE__ == $0
nissan = Car.new(55705640583637794,78938,17731,20063,"Chevrolet","Odyssey",1993,"Black",817094)
puts nissan.vin
puts nissan.buy_price
puts nissan.sell_price
puts nissan.list_price
puts nissan.make
puts nissan.model
puts nissan.year
puts nissan.color
puts nissan.mileage
end
