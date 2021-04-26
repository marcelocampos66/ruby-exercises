def stock_picker(array)
  bigger = 0
  indexOfminor = 0
  indexOfbigger = 0
  array.each_with_index do | number, index1 |
    array.each_with_index do | compare, index2 |
      if index2 > index1 
        result = compare - number
        if (result > bigger)
          bigger = result
          indexOfminor = index1
          indexOfbigger = index2
        end
      end
    end
  end
  return indexOfminor, indexOfbigger
end

exemple = [17,3,6,9,15,8,6,1,10]
p stock_picker(exemple)
