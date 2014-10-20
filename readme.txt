Hongwei Shen's solution for the coding challenge of FundingCircle
10/20/2014

Run tests:
$rspec ./prime_sequence_spec.rb
$rspec ./prime_multiplication_table_spec.rb

Run the program:
Print multication table of first 10 primes
$./prime_multiplication_table.rb 

Print multication table of first 3 primes
$./prime_multiplication_table.rb 3


Time complexity:
1. Get the first N primes:  
   For prime test of each number, O(N) time.
   Need to test V numbers, which V is the value of the nth prime number.
   Overall it's O(N * V) time.

2. Calculation of the multiplicaiton table:  O(N*N) time

Overall the prime_multiplicaton_table.rb is:
  O(N*V + N*N) time, which is O(N*V) time.


