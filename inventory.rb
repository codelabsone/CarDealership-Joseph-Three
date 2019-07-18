class Vehicle

  def initialize(brand,model,year,price=0,vin)
    @brand = brand.capitalize
    @model = model.capitalize
    @year = year
    @price = price
    @vin = vin
  end

  def to_s
    "#{@brand} #{@model} made in #{@year} that costs $#{@price} with a vin of #{@vin}."
  end

  def dent
    @price -= 500
  end

  def scratch
    @price -= 250
  end

end

vehicle1 = Vehicle.new("chevrolet","corvette",2019,125000,12345678901234567)
puts vehicle1
