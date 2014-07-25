def legacy hash

  new_value_array = []
  new_key_array = []
  new_hash = {}

  old_array = hash.flatten

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

  Hash[new_hash.sort]

end
