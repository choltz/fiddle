def build_data
  data = []
  (1..3).each do |x|
    (1..500000).each do |j|
      data << { :a => x , :z => j }
    end
  end
  data
end

def find_uniq(data)
  data.uniq{ |d| d[:a] }
end

puts "building data set"
data = build_data

puts "finding uniq"
times = []

(1..10).each do |n|
  print "."
  start_time = Time.now
  find_uniq(data)
  times << Time.now - start_time
end

mean = times.inject(0.0){ |sum, element| sum + element} / times.length

puts
puts "average times: #{mean}"
