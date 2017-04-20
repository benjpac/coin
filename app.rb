require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_combinations')
require('pry')

get('/') do
  erb(:index)
end

get('/coin_combination_result') do
  @display = params.fetch("coin_amount").to_i().coin_combinations(params.fetch("missing_coin"))
  erb(:coin_combination_result)
end

get('/sieve_result') do
  @display = params.fetch("sieve").to_i().sieve()
  erb(:sieve_result)
end
