# collection = [4,2,6,7,1]

def insertion_sort(collection)
  (1...collection.count).each do |index|
    value_to_insert = collection[index]
    insertion_point = index

    while insertion_point > 0 && value_to_insert < collection[insertion_point - 1] do
      collection[insertion_point] = collection[insertion_point - 1]
      insertion_point -= 1
    end

    collection[insertion_point] = value_to_insert
  end

  collection
end
