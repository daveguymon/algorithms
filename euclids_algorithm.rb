def euclids_algorithm(num1, num2)
  remainder = num1 % num2

  remainder.zero? ? num2 : euclids_algorithm(num2, remainder)
end
