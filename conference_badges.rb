# Write your code here.

def badge_maker(name)
    return "Hello, my name is #{name}."
    puts "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    badges=[]
    i=0
    while i < array.length
        badges.push(badge_maker(array[i]))
        i += 1
    end    
    return badges
end

def assign_rooms(array)
    assigns = []
    i = 1
    array.each do |name|
        assigns.push("Hello, #{name}! You'll be assigned to room #{i}!")
        i += 1
    end
    return assigns
end

def printer(attendees)
    batch_badge_creator(attendees)
    batch_badge_creator(attendees).each do |messages|
        puts messages
    end
    assign_rooms(attendees).each do |i|
        puts i
    end
end