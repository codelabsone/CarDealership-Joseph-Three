class Vehicle

  def initialize(brand,model,color,year,price=0,vin=00000000000000000)
    @brand = brand.capitalize
    @model = model.capitalize
    @color = color
    @year = year
    @price = price
    @vin = vin
  end

  def to_s
    "A #{@color} #{@brand} #{@model} made in #{@year} that costs $#{@price} with a vin of #{@vin}."
  end

  def dent
    @price -= 500
  end

  def scratch
    @price -= 250
  end

end

vehicle1 = Vehicle.new("chevrolet","corvette","red",2019,125000,12345678901234567)
vehicle2 = Vehicle.new("chevrolet","corvette","red",2019,125000,12345678901234567)
vehicle2.scratch

puts vehicle1
puts vehicle2
