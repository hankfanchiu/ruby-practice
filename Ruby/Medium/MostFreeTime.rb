def MostFreeTime(strArr)

  converted = Array.new

  strArr.each do |event|
    # Parse the hour, minute, and AM/PM of the event start time.
    hour1 = event.scan(/\d+/)[0].to_i
    min1 = event.scan(/\d+/)[1].to_i
    am_pm1 = event.downcase.scan(/.\m/)[0]

    # Convert event start time to minutes.
    time1 = (hour1 * 60) + min1
    time1 += (12 * 60) if am_pm1 == "pm" && hour1 != 12

    # Parse the hour, minute, and AM/PM of the event end time.
    hour2 = event.scan(/\d+/)[2].to_i
    min2 = event.scan(/\d+/)[3].to_i
    am_pm2 = event.downcase.scan(/.\m/)[1]

    # Convert event end time to minutes.
    time2 = (hour2 * 60) + min2
    time2 += (12 * 60) if am_pm2 == "pm" && hour2 != 12

    # Append start time and end time to a subarray.
    event_time = Array.new
    event_time += [time1, time2]

    converted << event_time
  end

  # Determine the most free time between events.
  converted.sort
  most_free_time = 0

  i = 1
  while i < converted.length
    free_time = converted[i][0] - converted[i - 1][1]
    most_free_time = free_time if free_time > most_free_time
    i += 1
  end

  # Convert the most free time to HH:MM format.
  free_hour = (most_free_time / 60).to_s
  free_hour.insert(0, "0") if free_hour.length == 1

  free_min = (most_free_time % 60).to_s
  free_min.insert(0, "0") if free_min.length == 1

  return "#{free_hour}:#{free_min}"
end

puts MostFreeTime(["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"])
