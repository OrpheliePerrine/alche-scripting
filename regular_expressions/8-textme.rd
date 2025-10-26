#!/usr/bin/env ruby
# Extracts sender, receiver, and flags from TextMe log lines

input = ARGV[0]

# Match [from:SOMETHING] [to:SOMETHING] [flags:SOMETHING]
# The \s* allows for any number of spaces between sections
pattern = /\[from:(.*?)\].*?\[to:(.*?)\].*?\[flags:(.*?)\]/

matches = input.match(pattern)

if matches
  puts "#{matches[1]},#{matches[2]},#{matches[3]}"
  end

