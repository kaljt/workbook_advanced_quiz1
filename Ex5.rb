def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.length !=4
    puts "Invalid Entry!"
    return false
  end
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    #break if !is_a_number?(word)
  end
  return true
end

puts dot_separated_ip_address?("10.122.44.10")