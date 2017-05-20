#!/usr/bin/env ruby

def Enumerator.unfold(start)
  new do |yielder|
    loop do
      yielder << start
      start = yield start
    end
  end
end

def pascal(row)
  ([0] + row).zip(row + [0]).map {|a, b| a + b }
end

triangle = Enumerator.unfold [1] {|e| pascal(e)}
puts triangle.take(2*20 + 1).last[20]
