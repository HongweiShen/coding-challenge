#!/usr/bin/env ruby

require './prime_sequence'

class PrimeMultiplicationTable
  def initialize(primeCount)
    @primes = PrimeSequence.new(primeCount).primes
  end

  def line(lineNo)
    if lineNo == 0
      [nil].concat @primes
    elsif lineNo >= 1 && lineNo <= @primes.size
      multiplier = @primes[lineNo-1]  
      [multiplier].concat @primes.map { |x| x * multiplier }
    else
      nil
    end
  end
end

if __FILE__ == $0
  N = (ARGV[0] || 10).to_i

  table = PrimeMultiplicationTable.new(N)

  0.upto(N) do |lineNo|
    printf("%6s" * (N+1), *table.line(lineNo))
    printf("\n")
  end
end
