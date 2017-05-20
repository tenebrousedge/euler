#!/usr/bin/env ruby

require 'prime'

def factors (num)
1.upto(Math.sqrt(num)).select {|i| (num % i).zero?}
                      .inject([]) do |f, i|
                        f << num/i unless i == num/i
                        f << i
                      end.sort
end

puts factors(600851475143).select(&:prime?).max
