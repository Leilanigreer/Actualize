# write a program to output the day number (column one) with the smallest temperature spread (the maximum temperature is the second column, the minimum the third column).

# Open the .dat file 

# file = File.open("weather.dat", 'r')

# pp file.readline

File.foreach('weather.dat') do |line|
  puts line
end