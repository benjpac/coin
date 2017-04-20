require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it('returns correct change') do
    expect(66.coin_combinations()).to(eq(['2 quarter', '1 dime', '1 nickel', '1 penny']))
  end
  it('returns correct change') do
    expect(123.coin_combinations()).to(eq(['4 quarter', '2 dime', '3 penny']))
  end
  it('returns correct change when missing a coin type') do
    expect(96.coin_combinations("quarter")).to(eq(['9 dime', '1 nickel', '1 penny']))
  end
end
