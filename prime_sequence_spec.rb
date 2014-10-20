require './prime_sequence'

describe PrimeSequence do
  it "returns [] when #prime < 1" do 
    expect( PrimeSequence.new(-1).primes ).to eq([])
    expect( PrimeSequence.new(0).primes ).to eq([])
  end

  it "returns [2] when #prime is 1" do
    expect( PrimeSequence.new(1).primes ).to eq([2])
  end

  it "returns correct array when #prime is 10" do
    expect( PrimeSequence.new(10).primes ).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
  end
end
