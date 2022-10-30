def bubble_sort(collection)
  (collection.count - 1).times do
    collection.each_with_index do |item, index|
      if index < collection.length - 1
        if(item > collection[index + 1])
          collection[index] = collection[index + 1]
          collection[index + 1] = item
        else
          next
        end
      end
    end
  end

  collection
end
