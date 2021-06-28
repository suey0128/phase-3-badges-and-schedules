def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator nameArr
    nameArr.map{|name| badge_maker(name)}
end

def assign_rooms nameArr
    room_assign_arr = []
    nameArr.each_with_index {|name,index| 
    room_assign_arr << "Hello, #{name}! You'll be assigned to room #{index+1}!" }
    room_assign_arr
end

def printer nameArr
    assign_rooms(nameArr).each {|elem| puts elem}; batch_badge_creator(nameArr).each {|elem| puts elem} 
end
