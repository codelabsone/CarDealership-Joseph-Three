#Profit per sale
require_relative "Randomizer"

class Financials

  def initialize
    Randomizer.random_car
  end

  def net_profit
    Randomizer.random_sell_price - Randomizer.random_buy_price
  end

  def to_s
    "#{Randomizer.random_vin} was listed at $#{Randomizer.random_list_price}.  \n#{Randomizer.random_vin} was bought for $#{Randomizer.random_buy_price} and sold for $#{Randomizer.random_sell_price}.  \nThe net profit for #{Randomizer.random_vin} was $#{net_profit}."
  end
end

if __FILE__ == $0
finance = Financials.new
puts finance
end
