class Fixnum
  def coin_combinations(missing_coin = nil)
    puts missing_coin
    money = self
    coins = []
    coin_options = {"quarter"=>25, "dime"=>10, "nickel"=>5, "penny"=>1}
    if missing_coin
      coin_options.delete(missing_coin)
    end

    puts coin_options
    coin_options.keys.each() do |key|
      coin = coin_options.fetch(key)
      if money >= coin
        num_coins = money/coin
        money -= num_coins * coin
        coins.push(num_coins.to_s() + " " + key)
      end
    end
    puts(coins)
    coins
  end
end
