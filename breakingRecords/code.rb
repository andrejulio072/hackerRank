#!/bin/ruby

require 'stringio'

#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores)
  return nil if scores.length == 0
  high_score = low_score = scores[0]
  new_high_score_count = new_low_score_count = 0

  scores.each do |s|
    if s > high_score
      new_high_score_count += 1
      high_score = s
    end
    if s < low_score
      new_low_score_count += 1
      low_score = s
    end
  end

  [new_high_score_count, new_low_score_count]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

scores = gets.rstrip.split.map(&:to_i)

result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"

fptr.close()
