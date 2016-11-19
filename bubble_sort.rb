def bubble_sort(arr)
  n = arr.length - 1

  loop do
    swapped = false

    n.times do |i| # Checks every item of the array one time in each turn
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true # Only gets evaluated by the "loop" loop when the entire array is checked and there aren't ANY changes
      end
    end

    break if not swapped
  end

  arr
end


p bubble_sort([4,3,78,2,0,2])
# [3, 4, 2, 0, 2, 78]