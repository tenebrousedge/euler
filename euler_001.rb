#!/usr/bin/env ruby

puts (1..1000).select { |i| i % 3 == 0 || i % 5 == 0}.reduce(&:+)

# golfier

p (1..1000).select{|i|i%3<1||i%5<1}.sum
