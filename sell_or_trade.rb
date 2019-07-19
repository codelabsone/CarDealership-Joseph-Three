class Appraisal
attr_writer :brand,:model,:color,:year,:mileage,:condition

  def initialize(brand,model,color,year,mileage,condition)
    @brand = brand.capitalize
    @model = model.capitalize
    @color = color
    @year = year
    @mileage = mileage
    @condition = condition
  end

  def price
    price = @year.to_i + @mileage.to_i
  end

  def to_s
    "Your #{@year} #{@color} #{@brand} #{@model} with #{@mileage} miles in #{@condition} condition is worth $#{price}."
  end

end

car1 = Appraisal.new("chevrolet","corvette","red","2019","50000","very good")
puts car1
