class Monthly_Payment
attr_accessor :price,:down_payment,:apr,:term,:mpr,:x

  def initialize(price=0,down_payment=0,apr=0,term=0,mpr=0,x=0)
    @price = price
    @down_payment = down_payment
    @apr = apr
    @term = term
    @mpr = mpr
    @x = x
  end

  def your_payment
    @mpr = @apr / 12
    @x = (1 + @mpr)**@term
    (@price - @down_payment) * (@mpr * @x) / (@x - 1)
  end

  def to_s
    "Your monthly payments would be $#{your_payment.round(2)}."
  end

  
end

if __FILE__ == $0
payment1 = Monthly_Payment.new(75010,10,0.04,120)
puts payment1
payment1.price = 50000
puts payment1
end
