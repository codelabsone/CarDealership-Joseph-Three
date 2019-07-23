#Profit per sale
class Vehicle

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

vehicle1 = Vehicle.new("12345678901234567",2435,3457,"125,000")
vehicle2 = Vehicle.new("12345678901234567",1325,4657,"125,000")
vehicle3 = Vehicle.new("321598764TU785RC6",23552,46574,"34,000")
vehicle4 = Vehicle.new("4NHTU892449856145",2352,46753,900)
vehicle5 = Vehicle.new("3JW85DH84FBY8732F",123534,12454,"13,000")

profit = [vehicle1,vehicle2,vehicle3,vehicle4,vehicle5]
puts profit
