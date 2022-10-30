def binary_search(collection, item)
  collection.sort!

  return "Item not found" if collection.empty?

  index = collection.length / 2

  if item == collection[index]
    return "You have #{collection[index]}."
  elsif item > collection[index]
    collection = collection[index + 1, collection.length]
  else
    collection = collection[0, index]
  end

  binary_search(collection, item)
end
