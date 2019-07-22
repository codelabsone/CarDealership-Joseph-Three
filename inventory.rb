class Vehicle
attr_reader :vin

  def initialize(brand,model,color,year,price=0,vin=00000000000000000,mileage)
    @brand = brand.capitalize
    @model = model.capitalize
    @color = color
    @year = year
    @price = price
    @vin = vin
    @mileage = mileage
  end

  def to_s
    "A #{@color} #{@brand} #{@model} made in #{@year} with #{@mileage} miles that costs $#{@price} with a vin of #{@vin}. \nThe vin number is #{@vin.length} characters long."
  end

  def dent
    @price -= 500
  end

  def scratch
    @price -= 250
  end

end

vehicle1 = Vehicle.new("chevrolet","corvette","red",2019,"125,000","12345678901234567","50,000")
vehicle2 = Vehicle.new("chevrolet","corvette","red",2019,"125,000","12345678901234567","4,500")
vehicle3 = Vehicle.new("ford","F-150","blue",2013,"34,000","321598764TU785RC6","2,361")
vehicle4 = Vehicle.new("dodge","stratus","red",2006,900,"4NHTU892449856145","38,756")
vehicle5 = Vehicle.new("dodge","charger","silver",2016,"13,000","3JW85DH84FBY8732F","692,684")

vehicles = [vehicle1,vehicle2,vehicle3,vehicle4,vehicle5]
puts vehicles

puts vehicle5.vin.length == 17
