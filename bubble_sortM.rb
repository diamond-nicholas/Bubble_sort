def bubble_sort(array)
    n = array.length
    loop do 
    swapped = false 
    (n-1).times do |i|
        if array[i] > array[i + 1]
            array[i], array[i + 1] = array[i +1 ], array[i]
            swapped = true
        end
    end
    break if not swapped
end
array
end
a = [1, 9, 1, 6, 7, 9, 6, 8]
p bubble_sort(a) 