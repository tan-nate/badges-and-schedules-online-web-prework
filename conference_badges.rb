require 'pry'

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  array = []
  attendees.each do |x|
    array << badge_maker(x)
  end
  array
end

def assign_rooms(attendees)
  array = []
  attendees.each_with_index do |element, index|
    array << "Hello, #{element}! You'll be assigned to room #{index + 1}!"
  end
  array
end

def printer(attendees)
  attendees.each_with_index do |element, index|
    puts batch_badge_creator(attendees)[index]
    puts assign_rooms(attendees)[index]
  end
end
