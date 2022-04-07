def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true # if no swaps occur, then sorted will stay true and until loop will end
    arr.each_with_index do |_num, i|
      break if i == arr.length - 1 # can't compare the last element of an array

      j = i + 1
      if arr[i] > arr[j]
        arr[i], arr[j] = arr[j], arr[i] # swap elements in the array and set sorted to false
        sorted = false
      end
    end
  end
  arr
end

arr = [2, 5, 7, 3, 2, 4, 0, 74, 20, 43]
p bubble_sort(arr)

arr = [4, 3, 78, 2, 0, 2]
p bubble_sort(arr)
