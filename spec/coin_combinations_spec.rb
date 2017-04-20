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

describe('Fixnum#sieve') do
  it('successfully returns all prime numbers up to and including the number entered') do
    expect(12.sieve()).to(eq([2, 3, 5, 7, 11]))
  end
  it('successfully returns all prime numbers up to and including the number entered') do
    expect(200.sieve()).to(eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199]))
  end
end
