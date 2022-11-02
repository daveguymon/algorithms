def euclids_algorithm(num1, num2)
  remainder = num1 % num2

  if remainder.zero?
    return num2
  else
    return euclids_algorithm(num2, remainder)
  end
end
