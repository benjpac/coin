require 'pry'
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

class Fixnum
  def sieve
    prime_numbers = [2]
    for i in 3..self
      prime_check = 0
      prime_numbers.each() do |prime|
        if i % prime != 0
          prime_check += 1
        end
      end
      if prime_check == prime_numbers.length()
        prime_numbers.push(i)
      end
    end
    prime_numbers
  end
end

class Fixnum
  def allergies
    allergy_scores = {
      cats: 128,
      pollen: 64,
      chocolate: 32,
      tomatoes: 16,
      strawberries: 8,
      shellfish: 4,
      peanuts: 2,
      eggs: 1
    }
    score = self
    allergies = []
    allergy_scores.each() do |key, value|
      if score >= value
        allergies.push(key)
        score -= value
      end
    end
    allergies.join(" ").split()
  end
end
