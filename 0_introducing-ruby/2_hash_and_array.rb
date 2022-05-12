array = [1, 2, 3]
array << 4

puts array[0..7] # =>  [1, 2, 3]
puts array - [3, 4] # => 1, 2

array.sum
array.inject(&:+)

array.map { |one| one + 1 } # => return new array
array.map! { |one| one + 1 } # => update itself

strings = %w(Zhang3 Li4 Wang5)

hash = { a: 1, b: 2, c: 3}
hash.slice :a, :b # => { a: 1, b: 2 }
hash.except :a, :b # => { c: 3 }

