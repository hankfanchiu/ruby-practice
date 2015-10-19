# Using the Ruby language, have the function MostFreeTime(strArr)
# read the strArr parameter being passed which will represent a full day
# and will be filled with events that span from time X to time Y in the day.
#
# The format of each event will be hh:mmAM/PM-hh:mmAM/PM.
#
# For example,
# strArr may be ["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"].
#
# Your program will have to output the longest amount of free time available
# between the start of your first event and the end of your last event
# in the format: hh:mm.
#
# The start event should be the earliest event in the day and
# the latest event should be the latest event in the day.
# The output for the previous input would therefore be 01:30
# (with the earliest event in the day starting at 09:10AM
# and the latest event ending at 02:45PM).
#
# The input will contain at least 3 events and the events may be out of order.

def MostFreeTime(strArr)

  # Append the start time and end time of each event, in minutes, to new array.
  converted = Array.new
  strArr.each { |event| converted << times_to_minutes(event) }

  # Determine the most free time between events.
  converted.sort!
  most_free_time = 0

  i = 1
  while i < converted.length
    free_time = converted[i][0] - converted[i - 1][1]
    most_free_time = free_time if free_time > most_free_time
    i += 1
  end

  # Convert the most free time to HH:MM format.
  hour = (most_free_time / 60).to_s.rjust(2, "0")
  min = (most_free_time % 60).to_s.rjust(2, "0")

  return "#{hour}:#{min}"
end


def times_to_minutes(str)

  # Parse the start time of the event and convert to minutes.
  hour1 = str[0, 2].to_i
  min1 = str[3, 2].to_i
  am_pm1 = str[5, 2]

  time1 = (hour1 * 60) + min1
  time1 += (12 * 60) if am_pm1 == "PM" && hour1 != 12

  # Parse the end time of the event and convert to minutes.
  hour2 = str[8, 2].to_i
  min2 = str[11, 2].to_i
  am_pm2 = str[13, 2]

  time2 = (hour2 * 60) + min2
  time2 += (12 * 60) if am_pm2 == "PM" && hour2 != 12

  return [time1, time2]
end

puts MostFreeTime(["12:15PM-02:00PM","09:00AM-12:11PM","02:02PM-04:00PM"])
#=> 00:04
