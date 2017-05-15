def find_four_highest_integers(list)
  return [] if list.empty?
  return list.sort.reverse if list.length <= 4

  # Found the Ruby equivalent to Java's Integer.MIN_VALUE
  max_one   = -(2**(0.size * 8 -2))
  max_two   = -(2**(0.size * 8 -2))
  max_three = -(2**(0.size * 8 -2))
  max_four  = -(2**(0.size * 8 -2))

  list.each do |n|
    if n > max_one
      max_two = max_one
      max_one = n
    elsif n > max_two
      max_three = max_two
      max_two = n
    elsif n > max_three
      max_four = max_three
      max_three = n
    elsif n > max_four
      max_four = n
    end
  end
  return "Four highest: #{max_one}, #{max_two}, #{max_three}, #{max_four}."
end
