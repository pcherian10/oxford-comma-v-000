def oxford_comma(array)
  arr = array.split(",")
  return arr if arr.length == 1
  arr.each.with_index do |var, i|
    string = " "
    return "#{var[i]} and #{var[i + 1]}" if(arr.length == 2)
    string += "#{var},"
    string += "and #{var}" if(var == arr[-1])
  end
  string
end