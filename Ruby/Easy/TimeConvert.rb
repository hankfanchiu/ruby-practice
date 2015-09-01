# Have the function TimeConvert(num) take the num parameter being passed
# and return the number of hours and minutes the parameter converts to
# (ie. if num = 63 then the output should be 1:3).
#
# Separate the number of hours and minutes with a colon.

def TimeConvert(num)

  hour = num / 60

  min = num % 60
  min = "0" + min.to_s if min < 10

  return "#{hour}:#{min}"
end


# Test cases:
puts('TimeConvert(15) == "0:15": ' + (TimeConvert(15) == '0:15').to_s)
puts('TimeConvert(150) == "2:30": ' + (TimeConvert(150) == '2:30').to_s)
puts('TimeConvert(360) == "6:00": ' + (TimeConvert(360) == '6:00').to_s)
