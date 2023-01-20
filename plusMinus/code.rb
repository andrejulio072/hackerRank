#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
    # Write your code here
    return nil if arr.length == 0

  positive, negative, zero = 0, 0, 0

    arr.each do |num|
        if num>0
            positive+=1
        elsif num<0
            negative+=1
        else
            zero+=1
        end
    end
    puts positive/arr.size.to_f
    puts negative/arr.size.to_f
    puts zero/arr.size.to_f
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
