# Have the function CountingMinutes(str) take the str parameter being passed which will be two times
# (each properly formatted with a colon and am or pm) separated by a hyphen and return the total number
# of minutes between the two times. The time will be in a 12 hour clock format.

# For example: if str is 9:00am-10:00am then the output should be 60.
# If str is 1:00pm-11:00am the output should be 1320.

def CountingMinutes(str)

  # Parse the hour, minute, and AM/PM of the start time.
  hour1 = str.scan(/\d+/)[0].to_i
  min1 = str.scan(/\d+/)[1].to_i
  am_pm1 = str.scan(/.\m/)[0]
  
  # Calculate start time in minutes.
  time1 = (hour1 * 60) + min1
  if am_pm1 == "pm"
    time1 += (12 * 60)
  end
  
  # Parse the hour, minute, and AM/PM of the end time.
  hour2 = str.scan(/\d+/)[2].to_i
  min2 = str.scan(/\d+/)[3].to_i
  am_pm2 = str.scan(/.\m/)[1]
  
  # Calculate end time in minutes.
  time2 = (hour2 * 60) + min2
  if am_pm2 == "pm"
    time2 += (12 * 60)
  end
  
  # Account for end time in the following day.
  if time2 < time1
    time2 += (24 * 60)
  end
  
  return time2 - time1    
end
