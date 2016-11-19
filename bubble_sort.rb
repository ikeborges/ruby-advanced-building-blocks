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

    break unless swapped
  end

  arr
end

def bubble_sort_by(arr)
  bubble_sort(arr).reverse
end

# p bubble_sort([4, 3, 78, 2, 0, 2])
# [3, 4, 2, 0, 2, 78]

p bubble_sort_by(%w(hi hello hey)) do |left, right|
  left.length - right.length
end
