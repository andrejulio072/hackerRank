#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'divisibleSumPairs' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER k
#  3. INTEGER_ARRAY ar
#

def divisibleSumPairs(n, k, ar)
    # Write your code here
    #look to the first element then find the second that match
    # element=k-arr[i]
  pairs = 0
  i = 0
  while i < ar.length - 1
    j = i + 1
    while j < ar.length
      if (ar[i] + ar[j]) % k == 0
        pairs += 1
      end
      j += 1
    end
    i += 1
  end
  pairs
end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

k = first_multiple_input[1].to_i

ar = gets.rstrip.split.map(&:to_i)

result = divisibleSumPairs n, k, ar

fptr.write result
fptr.write "\n"

fptr.close()
