puts "you got here"

def score(dice)
  # You need to write this method
  total = 0
  dict = {}
  for i in dice
    if dict[i]
      dict[i] += 1
    else
      dict[i] = 1
    end
  end

  dict.each do |key, value|
    if value >= 3
      if key == 1
        total += 1000
      else
        total += key * 100
      end

      value -= 3

    end

    if key == 1
      total += 100 * value
    end
    if key == 5
      total += 50 * value
    end
  end

  return total

end


puts score([5])
puts "you got to the end"
puts score([1,1,1])
puts Object.constants.size
puts Object.constants
