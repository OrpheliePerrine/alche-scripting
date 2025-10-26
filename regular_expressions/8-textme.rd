#!/usr/bin/env ruby
# Extract sender, receiver, and flags from TextMe log lines

log = ARGV[0]

# Use a single regex to capture the three required fields
# \[from:(.*?)\]     → captures the sender (name or number)
# \[to:(.*?)\]       → captures the receiver
# \[flags:(.*?)\]    → captures the flags string
pattern = /\[from:(?<from>.*?)\].*?\[to:(?<to>.*?)\].*?\[flags:(?<flags>.*?)\]/

match = log.match(pattern)

# Only print if a match is found
puts "#{match[:from]},#{match[:to]},#{match[:flags]}" if match
