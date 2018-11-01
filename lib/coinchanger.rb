class Coinchanger
  def gave_me_the_change(amount)
    type_of_coins_i_can_use, coins = [200,100,50,20,10,5,2,1], []
    type_of_coins_i_can_use.each do |coin| #puts type_of_coins_i_can_use.inspect
      #.each is only on arrays. It access each element inside of the array. But it's not the index number!
      if (amount/coin) > 0
        while amount >= coin
          #(amount/coin).times do
          coins << coin
          #.time is the cardinal = position of the element in my array = same as my index starting 0 > it can't be attribuate to a float
          amount = amount - coin
          # end
        #  break
        puts "amount #{amount} coin #{coin}"
        end
      end
    end
    #.reduce(:+) or .inject(:+)(block) do the sum of all the coins. Sum can be replace by any operator: (:*)(:-)(:/)
    return coins
  end
end
