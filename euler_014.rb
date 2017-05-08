#!/usr/bin/env ruby

def collatz(i)
  result = [i]
  while i != 1
    i = (i%2 == 0) ? i/2 : i*3 + 1
    result.push(i)
  end
  result
end

puts 1.upto(1E6).map {|i| collatz(i)}.max_by(&:length).first