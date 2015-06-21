def mess_with_vars(one, two, three)
  puts "#{one.object_id} two #{two.object_id} three #{three.object_id}"
    one = two
    two = three
    three = one
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)
  puts "Outside of method"
  puts "one #{one.object_id}"
  puts "two #{two.object_id}"
  puts "three #{three.object_id}"

  #should output "one" "two" "three"
  puts "one is: #{one}"
 puts "two is: #{two}"
 puts "three is: #{three}"

  def mess_with_vars_b(one, two, three)
    one = "two"
    two = "three"
    three = "one"
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars_b(one, two, three)
  puts "Output of mess_with_vars_b"
  puts "one is: #{one}"
  puts "two is: #{two}"
  puts "three is: #{three}"

  def mess_with_vars_c(one, two, three)
    one.gsub!("one","two")
    two.gsub!("two","three")
    three.gsub!("three","one")
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars_c(one, two, three)
  #mutates values passed in
  puts "Output of mess_with_vars_c"
  puts "one is: #{one}" # should be "two"
  puts "two is: #{two}" #should be "three"
  puts "three is: #{three}" #should be "one"