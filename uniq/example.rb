data = []
("b".."z").each_with_index do |letter, index|
  data << { :a => 1, letter.to_sym => index }
end

puts "> data.uniq"
puts data.uniq
puts

# uniq will pick the first match and discard the reset
puts "> data.uniq{ |d| d[:a] }"
puts data.uniq{ |d| d[:a] }
puts

# reverse the data contents, then check for uniqueness - which element will
# be picked?

data.reverse!
puts "> data.reverse!\n> data.uniq{ |d| d[:a] }"
puts data.uniq{ |d| d[:a] }
