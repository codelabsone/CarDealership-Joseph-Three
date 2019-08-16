class Appraisal
attr_accessor :brand,:model,:color,:year,:mileage,:condition

  def initialize(brand="",model="",color="",year="",mileage="",condition="")
    @brand = brand.capitalize
    @model = model.capitalize
    @color = color
    @year = year
    @mileage = mileage
    @condition = condition
  end

  def condition
    if @condition == "very good"
      0.90

    elsif @condition == "good"
      0.70

    elsif @condition == "ok"
      0.60

    elsif @condition == "bad"
      0.40

    else @condition == "very bad"
      0.20
    end
  end

  def mileage
    if @mileage >= 0 and @mileage <= 24999
      0.90

    elsif @mileage >= 25000 and @mileage <= 49999
      0.70

    elsif @mileage >= 50000 and @mileage <= 74999
      0.60

    elsif @mileage >= 75000 and @mileage <= 99999
      0.40

    else @mileage >= 100000
      0.20
    end
  end

  def est_value
    sprintf("%0.02f", @year.to_i * mileage * condition)
  end

  def to_s
    "Your vehicle is valued at $#{est_value}."
  end

end

if __FILE__ == $0
appraisal1 = Appraisal.new("chevrolet","corvette","red",2019,25050,"very good")
appraisal2 = Appraisal.new("chevrolet","corvette","red",2019,125000,"good")
appraisal3 = Appraisal.new("ford","F-150","blue",2013,34000,"ok")
appraisal4 = Appraisal.new("dodge","stratus","red",2006,900,"bad")
appraisal5 = Appraisal.new("dodge","charger","silver",2016,13000,"very bad")

appraisals = [appraisal1,appraisal2,appraisal3,appraisal4,appraisal5]
puts appraisals
end
