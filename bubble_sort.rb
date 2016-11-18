def bubble_sort(arr)
  n = arr.length - 1

  n.times do
    arr.map_with_index do |value, index|
      a = arr[index]
      b = arr[index + 1]
      check = index <=> (index + 1)

      if check == 1
        a, b = b, a
      end

    end
  end

  arr
end

p bubble_sort([4,3,78,2,0,2])