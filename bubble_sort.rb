def bubble_sort(arr)
    sorted = false
    until sorted
        sorted = true # if no swaps occur, then sorted will stay true and until loop will end
        arr.each_with_index do |num, idx_1|
            break if idx_1 == arr.length - 1 # can't compare the last element of an array
            idx_2 = idx_1 + 1
            if arr[idx_1] > arr[idx_2]
                arr[idx_1], arr[idx_2] = arr[idx_2], arr[idx_1] # swap elements in the array and set sorted to false
                sorted = false
            end
        end
    end
    arr
end

arr = [2, 5, 7, 3, 2, 4, 0, 74, 20, 43]
p bubble_sort(arr)

arr = [4,3,78,2,0,2]
p bubble_sort(arr)
