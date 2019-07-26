class Monthly_Payment

  def initialize(price,down_payment,apr,term)
    @price = price
    @down_payment = down_payment
    @apr = apr
    @term = term
  end

  def your_payment
    mpr = @apr / 12
    x = (1 + mpr)**@term
    (@price - @down_payment) * (mpr * x) / (x - 1)
  end

  def to_s
    "Youre monthly payments would be $#{your_payment}."
  end

end

payment1 = Monthly_Payment.new(75010,10,0.04,120)
puts payment1
