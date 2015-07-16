class App

  def brackets(arr)

    res = {}
    arr.each {|key,value|
      if( value.to_s == "(" )

        next_key_one = arr[(key.to_i+1)]
        if(next_key_one.to_s != ')')
          res[key.to_i] = value.to_s
        end

      elsif( value.to_s == ')' )
        prev_key_two = arr[(key.to_i-1)]

        if(prev_key_two.to_s !='(')
          res[key.to_i] = value.to_s
        end

      end
    }


    if(res.has_value?(')') == nil or res.has_value?('(') == nil)
        res = brackets(res)
    else
      return res
    end

    return res

  end

  def hash_arr (arr)

    hash_arr = {}

      arr.each_with_index {  |value, key|
        k = key.to_i
        v = value.to_s
        hash_arr[k] = v
      }

      return hash_arr
  end


end


a = App.new
str = gets.chomp
str = a.hash_arr(str.split(//))
result = a.brackets(str)

result.each {|key,value|
  puts key.to_s + "     " + value.to_s
}
