#SOLUTION 3 TEAM_______________________________________________________________________________
def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]
  change = 0

  coins.each do |coin|
    if money == coin
       return coin
    elsif is_divisible(money, coin)
      change = [coin] * number_of_coins(money, coin)
      return change
    end
  end
  change
end

def is_divisible(money, coin)
  money % coin == 0
end

def number_of_coins(money, coin)
  money / coin
end

#SOLUTION 2_______________________________________________________________________________
class Change
  def change(amount)
    available_coins = [200, 100, 50, 20, 10, 5, 2, 1] # definition of the type coins I have at my disposal
    coins = [] # it's an array
    index = 0 # position of the available_coins in the array
    coin = available_coins[index] # coin = all of my coins[position of my coins in the array]= array.lenght[]
    remaining_amount = amount
    until remaining_amount == 0
      until remaining_amount >= coin
         index = index + 1
         coin = available_coins[index]
      end
      puts "Amount: #{remaining_amount} | Coin: #{coin}"
      coins << coin
      remaining_amount = remaining_amount - coin
    end
    coins
  end
end

#SOLUTION 1_______________________________________________________________________________
class Coinchanger
  def change(amount)
    specific_coins  = [200, 100, 50, 20, 10, 5, 2, 1]
    coins            = []          # holds list of coins to return
    new_amount = amount
    specific_coins.each do |coin| # counts down finds biggest coins first
      if ((new_amount/coin).to_int > 0)
      then (new_amount/coin).to_int.times { coins << coin }
        puts "The new Amount: #{new_amount} | Coin: #{coin}"
        new_amount = amount - coins.inject(:+)
      end                         # coins.inject(:+) sums array items
    end                           # stackoverflow.com/a/1538801/1148249
    puts "Amount #{amount} >> Coins: #{coins}\n\n"
    return coins
  end
end
