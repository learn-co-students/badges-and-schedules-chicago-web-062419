require "pry"
def badge_maker(name)
   "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    new_array=[]
    i = 0
    while i < array.length
         new_array.push("Hello, my name is " + array[i]+ ".")
         i += 1
    end
    new_array 
end 

def assign_rooms(array)
    room_assignments=[]
    array.each_with_index do |name,index|
    room_assignments.push("Hello, #{name}! You'll be assigned to room #{index+1}!")
    end
    room_assignments
end 

def printer(array)
    attendees = batch_badge_creator(array)
    attendees.each do |badge|
        #binding.pry
    puts badge
    end 

    room_assignments.each do |assignments|
        puts "#{assignments}"
    end  
end     