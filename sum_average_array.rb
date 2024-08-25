numbers = [5, 2, 6, 1]
pp numbers

numbers_summed = numbers.sum 
pp numbers_summed

numbers_average = numbers_summed/ numbers.length.to_f
pp numbers_average

# with a loop
i = 0
summed_number = 0
while i < numbers.length
  summed_number = summed_number + numbers[i]
  i = i + 1
end
p summed_number

