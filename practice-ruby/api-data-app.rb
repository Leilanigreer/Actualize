require 'http'
require 'time'

response = HTTP.get("https://data.sfgov.org/resource/jjew-r69b.json")

trucks = response.parse

pp trucks[0]
pp trucks[0]["dayofweekstr"]

# Goals

# Ask the user what the day is and save it
  
# puts "What day is it?"
# day = gets.chomp
# pp "Today is #{day}."


# Show the trucks that are open on that day

# puts "What day is it?"
# day = gets.chomp
# pp "Today is #{day}."

# trucks.each do |truck|
#   if truck["dayofweekstr"] == day
#     pp truck["applicant"]
#     puts "******"
#   end
# end 
  

# Show the hours of those trucks

# puts "What day is it?"
# day = gets.chomp
# pp "Today is #{day}."

# trucks.each do |truck|
#   if truck["dayofweekstr"] == day
#     pp truck["applicant"]
#     pp "They open at #{truck["start24"]} and close at #{truck["end24"]}"
#     puts "******"
#   end
# end

# Find the unique opening times

open_unique_times = trucks.map { |truck| truck["start24"] }.uniq
pp open_unique_times

# Find the unique closing times

close_unique_times = trucks.map { |truck| truck["end24"] }.uniq
pp close_unique_times


#convert one time string to a timestamp

time_string = "07:00"
timestamp = Time.parse("2000-01-01 #{time_string}")
pp timestamp


# open_sorted_times = open_unique_times.sort_by { |t| Time.parse("2000-01-01 #{t}") }
# pp open_sorted_times


# define midnight muchies between 00:00 and 03:00
# midminght_muchies = 


