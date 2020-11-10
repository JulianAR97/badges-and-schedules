# Write your code here.

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    badges = names.collect {|name| badge_maker(name)}
    badges
end

def assign_rooms(names)
    room_messages = []
    names.each_with_index do |name, index|
        message = "Hello, #{name}! You'll be assigned to room #{index + 1}!"
        room_messages.push(message)
    end
    room_messages
end

def printer(names)
    badges = batch_badge_creator(names)
    rooms = assign_rooms(names)

    badges.each {|name| puts name}
    rooms.each {|name| puts name}
end


