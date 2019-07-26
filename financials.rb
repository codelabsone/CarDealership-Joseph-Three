#Profit per sale
class Car

  def initialize(vin=00000000000000000,buy_price,sell_price,list_price)
    @vin = vin
    @buy_price = buy_price
    @sell_price = sell_price
    @list_price = list_price
  end

  def net_profit
    @sell_price - @buy_price
  end

  def to_s
    "#{@vin} was listed at $#{@list_price}.  #{@vin} was bought for $#{@buy_price} and sold for $#{@sell_price}.  The net profit for #{@vin} was $#{net_profit}."
  end

end

car1 = Car.new("12345678901234567",2435,3457,"125,000")
car2 = Car.new("12345678901234567",1325,4657,"125,000")
car3 = Car.new("321598764TU785RC6",23552,46574,"34,000")
car4 = Car.new("4NHTU892449856145",2352,46753,900)
car5 = Car.new("3JW85DH84FBY8732F",123534,12454,"13,000")

profit = [car1,car2,car3,car4,car5]
puts profit
