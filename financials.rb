#Profit per sale
require_relative "inventory"

  def net_profit
    @sell_price - @buy_price
  end

  def to_s
    "#{@vin} was listed at $#{@list_price}.  #{@vin} was bought for $#{@buy_price} and sold for $#{@sell_price}.  The net profit for #{@vin} was $#{net_profit}."
  end





@profit = net_profit
puts profit
