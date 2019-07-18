class Vehicle

  def initialize(brand,model,year,price=0)
    @brand = brand.capitalize
    @model = model.capitalize
    @year = year
    @price = price
  end

  def to_s
    "#{@brand} #{@model} made in #{@year} that costs $#{@price}."
  end

  def dent
    @price -= 500
  end

  def scratch
    @price -= 250
  end

end

vehicle1 = Vehicle.new("chevrolet","corvette",2019,125000)
puts vehicle1

class CarInInventory
def initialize(vin, price)
  @vin = vin
  @price = price
  end

  def to_s
    "vin: #{@vin} price: #{@price}"
  end
end
  car  = CarInInventory.new(12000, 10000)
puts car
