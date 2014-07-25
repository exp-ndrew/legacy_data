def legacy hash
  # flatten the input:
  old_array = hash.flatten
  new_value_array = []
  new_key_array = []
  new_hash = {}

  # old_array looks like [1, ["A", "E", "I", "O", "U"], 2, ["D", "G"]]

  # separate out the even elements into a new array
  old_array.each_with_index do |item, index|
    if index % 2 == 0
      new_value_array.push(item)
    elsif index % 2 != 0
      new_key_array.push(item)
    end
  end

  new_key_array.each_with_index do |item, index1|
    new_key_array[index1].each_with_index do |key, index2|
      new_hash[key] = new_value_array[index1]
    end
  end

  # "reference" for what the arrays look like at this point
  # new_value_array = [1,2]
  # new_key_array = [["A","E","I","O","U"],["D","G"]]
  # new_hash = {"A"=>1, "E"=>1, "I"=>1, "O"=>1, "U"=>1, "D"=>2, "G"=>2}

  Hash[new_hash.sort]

end

puts legacy ({1 => ["A", "E", "I", "O", "U"],
              2 => ["D", "G"],
              3 => ["B", "C", "M", "P"],
              4 => ["F", "H", "V", "W", "Y"],
              5 => ["K"],
              8 => ["J", "X"],
              10 =>["Q", "Z"]})
