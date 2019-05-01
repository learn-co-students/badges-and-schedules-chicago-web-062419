def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator (names)
  name_message = []
  names.each do |name|
    name_message << badge_maker(name)
  end
  name_message
end

def assign_rooms (names)
  room_message = []
  names.each_with_index do |name, index|
  room_message << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
end
room_message
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |badge|
    puts badge
  end
end
