array =  ['a','b','c','d','e','f','g']

puts array.fetch(1)

array.delete("h")
puts array.to_s

puts array.reverse.to_s

puts array.length

puts array.sort!.to_s
puts array.to_s

puts array.shuffle!.to_s
puts array.to_s

a = %w{gato perro oso} 
puts a.values_at(1,2).join(' y ')

array.insert(0,"j")
puts array.to_s
array.insert(9,"h")
puts array.to_s


arreglo =  ['a','b','c',nil,nil,'f','g']
puts "join : #{arreglo.join("||")}\n\n"