def oxford_comma(array)
  return array if array.length == 1
  string = " "
  array.each.with_index do |var, i|
    return "#{var} and #{var[i + 1]}" if (array.length == 2)
    string += "#{var},"
    string += "and #{var}" if(var == array[-1])
  end
  string
end

oxford_comma(["kiwi", "durian", "starfruit"])