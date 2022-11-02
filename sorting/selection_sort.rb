def selection_sort(collection)
  current_target_index = 0

  (collection.length - 2).times do
    current_value = collection[current_target_index]
    unsorted_array = collection[(current_target_index + 1)..-1]
    unsorted_minimum_index = 0
    unsorted_array.each_with_index do |value, index|
      unsorted_minimum = unsorted_array[unsorted_minimum_index]

      if value < unsorted_minimum
        unsorted_minimum = value
        unsorted_minimum_index = index
      end
    end

    if unsorted_array[unsorted_minimum_index] < current_value
      converted_index = collection.length - unsorted_array.length + unsorted_minimum_index

      collection[current_target_index] = unsorted_array[unsorted_minimum_index]
      collection[converted_index] = current_value
    end

    current_target_index += 1
  end

  collection
end
