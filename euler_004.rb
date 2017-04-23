#!/usr/bin/env ruby
(900..999).to_a.product((900..999).to_a).map { |e| e.reduce(&:*) }.select do |e|
  a = e.to_s.scan(/\d/).map(&:to_i)
  a[0..2].reverse == a[3..5]
end.max