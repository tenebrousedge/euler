#!/usr/bin/env ruby

puts (1..100).reduce(&:+)**2 - (1..100).map { |e| e**2 }.reduce(&:+)