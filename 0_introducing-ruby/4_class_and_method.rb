class People < Array
  def initialize(*data)
    super(data.map { Person.new(_1) })
  end

  def <<(item)
    super(Person.new(item))
  end
end

people = People.new ['Zelda', 'Link']

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
