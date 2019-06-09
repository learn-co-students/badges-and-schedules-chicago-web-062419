# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
    badge_messages = []
    speakers.each do |name|
        badge_messages.push("Hello, my name is #{name}.")
    end
    return badge_messages
end

# https://docs.ruby-lang.org/en/2.0.0/Enumerable.html#method-i-each_with_index
def assign_rooms(speakers)
    rooms = []
    speakers.each_with_index{|name, index|
        rooms.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")
    }
    return rooms
end

def printer(speakers)
    batch_badge_creator(speakers).each do |message|
        puts message
    end
    assign_rooms(speakers).each do |message|
        puts message
    end
end