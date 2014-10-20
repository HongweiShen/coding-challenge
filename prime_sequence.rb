class PrimeSequence
  attr_reader(:primes)

  def initialize(prime_count)
    @N = [prime_count, 0].max

    @primes = []
  
    1.upto(@N) do
      nextPrime
    end
  end

  private
  def nextPrime
    num = 1 + (primes[-1] || 1)

    while !isPrime?(num) do num += 1 end

    @primes << num

    num
  end

  def isPrime?(num)
    @primes.each do |x|
      break if x * x > num
      return false if num % x == 0
    end

    true
  end
end
