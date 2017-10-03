
hash =

{ data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

#RETRIEVE THE CAPACITY OF ROOM 201 AND STORE IT IN A VARIABLE

#so what im getting is that

#DATA IS A KEY, AND ITS VALUE IS THE ARRAYS OF ROOMS AND EVENTS
#EMBEDED WITHIN THIS KEY/VALUE PAIR IS THE KEY ROOMS, WITH ITS VALUES AND THE KEY EVENTS WITH ITS VALUES

room201_capacity = 0
hash.each do |key, value|
  value.each do |key2, value2|
    value2.each do |key3, value3|
      if key3[:room_number] == "201"
        room201_capacity=key3[:capacity]
      end
    end

  end
end

puts "The capacity of room 201 is #{room201_capacity}"


#Find all the events taking place in room 201.
# Iterate through them and print "ok" if the number of planned attendees will fit in the room.




events_array = []

hash.each do |key, value|
  value.each do |key2, value2|
    if key2 == :events
      events_array = value2
    end
  end
end

puts "okokokokokok"
puts events_array.inspect

events_array.each do |element|
  if element[:room_id] == 1 && element[:attendees] < room201_capacity
    puts "Event #{element[:id]} is okay to take place in room 201"
end
end

=begin
puts "******"

  hash.each do |key, value|
    value.each do |key2, value2|
      value2.each do |key3, value3|
        if value3== "201"
          puts room201_capacity = value3[:capacity]
        end
      end
    end
  end

=end
