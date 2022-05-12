class User
  def hello
    puts "Hello world!"
  end
end

module UserLogger
  def hello
    puts "before #hello"
    super
    puts "after #hello"
  end

  def method_missing(m, *args, &block)
    puts "calling ##{m}"
  end
end

User.prepend UserLogger
user = User.new
user.hello
# => before #hello
# => Hello world!
# => After #hello
user.bye
# => calling #bye
