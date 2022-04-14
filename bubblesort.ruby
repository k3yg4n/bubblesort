
def bubble_sort(array)
  swapDone = false
  lastIndex = array.length - 1

  while(true) # Loop until sorted
    for i in 0...lastIndex # Loop from the first element to second last, swapping if out of place
      if(array[i] > array[i+1])
        temp = array[i]
        array[i] = array[i+1]
        array[i+1] = temp
        swapDone = true
      end
    end

    if(swapDone == false)  # If no swap is completed upon full walkthrough, array is sorted
      return array
    end

    swapDone = false # Update swapDone to false when returning to the first element
    lastIndex -= 1 # Shift last index because we know it is in correct location
  end

  return array
end


myArray = [5,4,3,2,1,0]
p bubble_sort(myArray)
myArray2 = [1,2]
p bubble_sort(myArray2)
myArray3 = [2,0,-1,2,1]
p bubble_sort(myArray3)