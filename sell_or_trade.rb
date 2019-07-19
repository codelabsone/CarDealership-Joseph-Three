class Appraisal
attr_writer :brand,:model,:color,:year,:mileage

  def initialize(brand,model,color,year,mileage)
    @brand = brand.capitalize
    @model = model.capitalize
    @color = color
    @year = year
    @mileage = mileage
  end

  def price
    price = @year.to_i + @mileage.to_i
  end

  def to_s
    "Your #{@year} #{@color} #{@brand} #{@model} with #{@mileage} miles is worth $#{price}."
  end

end

car1 = Appraisal.new("chevrolet","corvette","red","2019","50000")
puts car1
