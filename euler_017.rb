#!/usr/bin/env ruby
require 'humanize'
# yes, this is a lazy solution, but I hate dealing with number-to-word conversions
puts (1..1000).to_a.map(&:humanize).join.tr(" -", "").size
