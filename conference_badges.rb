guest = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array) #takes an array as an argument
  badge_messages = [] #create an empty array. This will be returned at the end.
  array.each do |speaker| #grab each name or element in the array with .each
     badge_messages << badge_maker(speaker) #call badge_maker method and .push results into badge_messages array
  end
  badge_messages #return badge_messages array. guest array is unaltered and can be reused for other methods
end

def assign_rooms(array)
  room_assignments = []
  array.each.with_index(1) do |speaker, room_number|
      room_assignments << "Hello, #{speaker}! You'll be assigned to room #{room_number}!"
  end
  room_assignments
end

def printer(attendees)
  puts batch_badge_creator(attendees)
   x = assign_rooms(attendees).length
   n = assign_rooms(attendees)
   y = 0
   while y < x do
   puts "#{n[y]}"
   y += 1
  #  x.each do
  #
  #
  # attendees.each.with_index(1) do |speaker, index|
  #   puts "Hello, #{speaker}! You'll be assigned to room #{index}!"
 end
end
