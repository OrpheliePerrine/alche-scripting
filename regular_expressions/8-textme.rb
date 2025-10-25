#!/usr/bin/env ruby
log_line = ARGV[0]
if log_line =~ /\[from:(?<sender>[^\]]+)\].*\[to:(?<receiver>[^\]]+)\].*\[flags:(?<flags>[^\]]+)\]/
  puts "#{Regexp.last_match[:sender]},#{Regexp.last_match[:receiver]},#{Regexp.last_match[:flags]}"
end

