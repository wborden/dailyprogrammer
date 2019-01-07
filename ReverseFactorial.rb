#DailyProgrammer challenge #286 [Easy]


def rev_fact

  puts "Input an number to find the reverse factorial for"
  num = gets.chomp.to_i
  divisor = 2

  while (num/divisor > 1) do
     num = num/divisor
     divisor += 1
  end

  if num != divisor
    puts "No factorial"
  else
    divisor = divisor.to_s
    divisor += "!"
    puts divisor
  end
end

rev_fact
