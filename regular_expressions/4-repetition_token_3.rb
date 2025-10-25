#!/usr/bin/env ruby
# This script takes one argument and prints matches of a specific regex

puts ARGV[0].scan(/^h(?:(?!bbb)(?:b|t))*t(?:b|t)*n$/).join
