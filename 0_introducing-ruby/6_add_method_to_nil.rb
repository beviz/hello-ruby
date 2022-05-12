
puts "#{nil.respond_to?(:present?)}"
# => false

def nil.present?
  false
end

puts "nil.present?: #{nil.present?}"
# => false

# Usage:
# return "user exists" unless user.present?
# return true if age.to_i > 18
