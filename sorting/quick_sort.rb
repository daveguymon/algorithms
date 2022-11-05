# Receive Array instance as input
# Pick a pivot point (e.g., last element) and store that value to a pointer variable
# Iterate through the subarray, excluding the pivot and create a sublist of lesser values and a sublist of greater values.
# Place pivot in the middle of sublists.
# For each subarray, pick a pivot and perform the above operations
# Continue until all subarrays have a length of 1
# Merge subarrays together to form one ordered array

# collection = [4,3,7,2,8,1]

# pivot = 1
# collection = [[], [1], [4,3,7,2,8]]

# pivot = 8
# collection = [[], [1], [4,3,2,7], [8]]

# pivot = 7
# collection=[[], [1], [4,3,2], [7], [], [8], []]

# pivot = 2
# collection = [[], [1], [2], [4,3], [7], [], [8], []]

# pivot = 3
# collection = [[], [1], [2], [], [3]. [4], [], [7], [], [8], []]

# collection = [1,2,3,4,7,8]

collection = [9,4,1,7,5]

def quick_sort(collection, left_index = 0, pivot_index)
  right_index = pivot_index - 1

  pivot = collection[pivot_index]
  left_pointer = collection[left_index]
  right_pointer = collection[right_index]

  pointers_crossed = left_index > right_index

  if !pointers_crossed
    while left_pointer <= pivot do
      left_index += 1
      left_pointer = collection[left_index]
    end

    while right_pointer > pivot do
      right_index -= 1
      right_pointer = collection[right_index]
    end

    collection[left_index] = right_pointer
    collection[right_index] = left_pointer
  else
    collection[left_index] = pivot
    collection[pivot_index] = left_pointer
  end

  return [collection, left_index, pivot_index]
end
