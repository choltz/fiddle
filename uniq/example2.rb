data = []
data << { :a => 2, :b => 1 }
data << { :a => 2, :b => 2 }
("b".."z").each_with_index do |letter, index|
  data << { :a => 1, letter.to_sym => index }
end

# uniq will pick the first match and discard the reset
# puts "> data.uniq{ |d| d[:a] }"
puts data.uniq{ |d| d[:a] }
puts

# # accomplish the same thing by taking the unique keys and applying an select
# predicate = data.map{ |d| d[:a] }.uniq

puts data.group_by{ |d| d[:a] }.map{ |d| d[1].first }
