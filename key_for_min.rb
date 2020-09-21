# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.length == 0
    return nil
  else
   name_array = name_hash.collect {|name, num| name}
   num_array = name_hash.collect {|name, num| num}
   lowest = num_array[0]
   low_name = name_array[0]
   num_array.each do |num|
     if num < lowest
       lowest = num
       low_name = name_array[num]
     end
   end
  end
  low_name
end