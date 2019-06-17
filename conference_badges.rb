#badge_maker("Arel")
#=> "Hello, my name is Arel."
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array_of_names)
  badge_messages = []
  array_of_names.each do |name|
    message = "Hello, my name is #{name}."
    badge_messages << message
  end
  badge_messages
end

def assign_rooms(speakers)
  room_assignments = []
  speakers.each_with_index do |name,index|
    speakers[index] = name
    message = "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    room_assignments << message
  end
  room_assignments
end

def printer(attendees)
  rooms_list = assign_rooms(attendees)
  rooms_list.each do |element|
    puts element
  end
  badges = batch_badge_creator(attendees)
  badges.each do |element|
    puts element
  end
end