#!/usr/bin/env ruby
# Extracts sender, receiver, and flags from TextMe log lines

input = ARGV[0]

# Use regex to match the relevant fields
matches = input.scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)

# Print the extracted values separated by commas
matches.each do |from, to, flags|
  puts "#{from},#{to},#{flags}"
end
