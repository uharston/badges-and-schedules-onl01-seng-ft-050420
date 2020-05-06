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
   x = batch_badge_creator(attendees)
   x.each do |speaker| 
     puts "#{speaker}"
   end
   y = assign_rooms(attendees)
   y.each do |room_assignments|
     puts "#{room_assignments}"
   end
 end
 
#    x = assign_rooms(attendees).length
#    n = assign_rooms(attendees)
#    y = 0
#    while y < x do
#    puts "#{n[y]}"
#    y += 1
#   #  x.each do
#   #
#   #
#   # attendees.each.with_index(1) do |speaker, index|
#   #   puts "Hello, #{speaker}! You'll be assigned to room #{index}!"
#  end
# end
# basket = ["apple 1","apple 2","apple 3","apple 4","apple 5","apple 6","apple 7","apple 8","apple 9","apple 10"]
#  
# apples_in_basket = basket.size # Step 1
# apples_taken_out = 0 # Step 2
#  
# loop do # Step 3
#     if apples_taken_out < apples_in_basket 
#         # Step 4
#         puts "Taking out #{basket[apples_taken_out]}"
#         apples_taken_out += 1
#     else
#         # Step 5
#         break
#     end
# end