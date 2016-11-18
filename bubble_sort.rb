def bubble_sort(arr)
  n = arr.length - 1

  n.times do
    arr.each_cons(2) do |a, b|
      check = a <=> b

      if check == 1
        a, b = b, a
      end

    end
  end

  arr
end

p bubble_sort([4,3,78,2,0,2])