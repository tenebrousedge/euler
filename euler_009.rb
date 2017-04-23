#!/usr/bin/env ruby


# require 'matrix'
# A = Matrix[[-1, 2, 2],[-2, 1, 2],[-2, 2, 3]]
# B = Matrix[[1, 2, 2],[2, 1, 2],[2, 2, 3]]
# C = Matrix[[1, -2, 2],[2, -1, 2],[2, -2, 3]]

# http://stackoverflow.com/questions/575117/generating-unique-ordered-pythagorean-triplets
# python example

# C# example
# http://somethingaboutlearning.blogspot.com/2013/08/pythagorean-triplets.html

# C-based gem to find triples https://github.com/lomereiter/ruby-numtheory

# @link https://ruby-doc.org/core-2.3.0/Enumerable.html#method-i-lazy
def pythagorean_triples
  (1..Float::INFINITY).lazy.flat_map {|z|
    (1..z).flat_map {|x|
      (x..z).select {|y|
        x**2 + y**2 == z**2
      }.map {|y|
        [x, y, z]
      }
    }
  }
end

1.upto(1000) { |a|
  (a+1).upto(1000) { |b|
  	c = 1000 - a - b
  	puts a*b*c if (a*a + b*b == c*c)
  }
}