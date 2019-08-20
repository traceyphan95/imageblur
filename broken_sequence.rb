def is_num?(str)
  !!Integeer(str)
rescue ArgumentError, TypeError
  false
end

def find_midding_number
# 1 if element can form such a sequence, and no number is missing
# for each item in sequence
sequence.split().each do |element|
# Look if item is number
  if is num?(element)
# if not, print 0
  if not is_it_number
  return 1
end

# if it is, continue
end

# 0 if the elements can form such a sequence, and no number is missing (not broken)
# for each item in the /sorted/ sequence
is_first_item = true
previous_item = 0
number_sequence = sequence.split().map { |n| n.to_i}
sorted_sequence = sequence.split().sort()
puts sorted_sequence
puts "----"
sorted_sequence.each do |element|
# check if item is previous item +1
  if element == (previous_item + 1)
    we_failed = true
    return previous_item +1
  end
previous_item = element
# if yes, continue
end if not 
#if eberything succeeded, return 0


return 0 
# If
# n if the elements are part of such a sequence, but some numbers are missing
# and n is the lowest of them (broken)
