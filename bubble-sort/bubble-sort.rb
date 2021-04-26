def bubble_sort(array)
  for index in 0...(array.length)
    for index2 in 0...(array.length - 1 - index)
      if array[index2] > array[index2 + 1]
        array[index2], array[index2 + 1] = array[index2 + 1], array[index2]
      end
    end
  end
  return array
end

exemple = [4,3,78,2,0,2]
p bubble_sort(exemple)
