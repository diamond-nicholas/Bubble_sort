def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end
a = [1, 9, 1, 6, 7, 9, 6, 8]
p bubble_sort(a)

def bubble_sort_by(arr)
  j = arr.length - 1

  while j.positive?
    (0...j).each do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]).positive?
    end
    j -= 1
  end
  arr
end

new_bubble_sort_by = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
p new_bubble_sort_by
