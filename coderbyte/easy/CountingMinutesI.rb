# Have the function CountingMinutesI(str) take the str parameter being passed
# which will be two times (each properly formatted with a colon and am or pm)
# separated by a hyphen and return the total number of minutes between
# the two times.

# The time will be in a 12 hour clock format.
# For example: if str is 9:00am-10:00am then the output should be 60.
# If str is 1:00pm-11:00am the output should be 1320.

def CountingMinutesI(str)

  # Parsing the components of the start time string
  hour1 = str.scan(/\d+/)[0].to_i
  min1 = str.scan(/\d+/)[1].to_i
  am_pm1 = str.scan(/.\m/)[0]

  # Determining the start time in minutes
  time1 = (hour1 * 60) + min1
  time1 = time1 + (12 * 60) if am_pm1 == "pm"

  # Parsing the components of the end time string
  hour2 = str.scan(/\d+/)[2].to_i
  min2 = str.scan(/\d+/)[3].to_i
  am_pm2 = str.scan(/.\m/)[1]

  # Determining the end time in minutes
  time2 = (hour2 * 60) + min2
  time2 = time2 + (12 * 60) if am_pm2 == "pm"
  time2 = time2 + (24 * 60) if time2 < time1

  return time2 - time1
end


def CountingMinutesI_2(str)

  numbers = str.scan(/\d+/)
  am_pm = str.scan(/.\m/)

  hour1 = numbers[0].to_i
  min1 = numbers[1].to_i
  am_pm1 = am_pm[0]
  time1 = (hour1 * 60) + min1
  time1 += (12 * 60) if am_pm1 == "pm"

  hour2 = numbers[2].to_i
  min2 = numbers[3].to_i
  am_pm2 = am_pm[1]
  time2 = (hour2 * 60) + min2
  time2 += (12 * 60) if am_pm2 == "pm"
  time2 += (24 * 60) if time2 < time1

  return time2 - time1
end


# Test cases
puts CountingMinutesI("9:00am-10:00am") #=> 60
puts CountingMinutesI("1:00pm-11:00am") #=> 1320

puts CountingMinutesI_2("9:00am-10:00am") #=> 60
puts CountingMinutesI_2("1:00pm-11:00am") #=> 1320
