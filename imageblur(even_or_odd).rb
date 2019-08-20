def even_or_odd(number)
  remainder_when_divided_by_2 = number % 2

  if remainder_when_divided_by_2 == 0
    return "Even"
  end

  if remainder_when_divided_by_2 == 1
    return "Odd"
  end
end

puts "1 even_or_odd #{even_or_odd(1)}"
puts "2 even_or_odd #{even_or_odd(2)}"
puts "3 even_or_odd #{even_or_odd(3)}"
puts "4 even_or_odd #{even_or_odd(4)}"