def insertion_sort(collection)
  (collection.count - 1).times do
    index_of_item_to_sort = 1

    while index_of_item_to_sort <= collection.count - 1 do
      if collection[index_of_item_to_sort - 1] > collection[index_of_item_to_sort]
        insertion_index = index_of_item_to_sort - 1
        greater_item = collection[insertion_index]

        collection[insertion_index] = collection[index_of_item_to_sort]
        collection[index_of_item_to_sort] = greater_item
      end

      index_of_item_to_sort += 1
    end
  end

  collection
end
