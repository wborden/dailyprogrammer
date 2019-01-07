# DailyProgrammer Challenge #149 [Easy] Disemvoweler

def disemvoweler

  puts "Enter the string you wish to remove the vowels from: "
  input = gets.chomp.gsub(" ", "")
  input_arr = input.split ""

  vowel_list = ["a", "e", "i", "o", "u"]
  vowel_out = []
  str_out = ""

  input_arr.each_with_index do |letter, index|
    vowel_list.each do |vowel|
      if letter == vowel
        vowel_out << letter
        input_arr[index] = ""
      end
    end
  end

  vowel_out = vowel_out.join
  puts input_arr.join
  puts vowel_out
end

disemvoweler
