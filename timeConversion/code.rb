#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    # Write your code here
    time_arr = s.split(":")
    hours = time_arr[0].to_i
    minutes = time_arr[1]
    seconds = time_arr[2]
    meridian = s[-2..-1]
    if meridian == "PM"
        hours += 12 if hours != 12
        seconds.slice! "PM"
    else
        if hours == 12
            hours = "00"
        elsif hours < 10
            hours = "0#{hours}"
        end
        seconds.slice! "AM"
    end
    "#{hours}:#{minutes}:#{seconds}"

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()
