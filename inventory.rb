require_relative 'car'

inventory = Struct.new(:vin,:buy_price,:sell_price,:list_price,:make,:model,:year,:color,:mileage)
cube = Car.new(55705640583637794,78938,17731,20063,"Chevrolet","Odyssey",1993,"Black",817094)
