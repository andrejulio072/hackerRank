#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

# def miniMaxSum(arr)
#     min = arr.sum - arr.max
#     max = arr.sum - arr.min

#     puts "#{min} #{max}"

# end
def miniMaxSum(arr)
  total = arr.reduce(&:+)
  min = max = nil
  # min = arr.min
  # max = arr.max
  arr.each do |i|
    if min == nil || i < min
      min = i
    end
    if max == nil || i > max
      max = i
    end
  end
  puts "#{total - max} #{total - min}"
end
arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
