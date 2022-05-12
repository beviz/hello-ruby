normal_variable = 1
CONSTANT_VARIABLE = 1
@instance_variable = 1
$global_variable = 1

v = 1
v = "string"

10.times { |i| puts i }
x = 10 ** 10 # => equals 10 **(10)

-100.abs

x ||= 100 # => equals x = x || 100

if 'abcdefg' =~ /^a(.+)/
  puts $1 #=> "bcdefg"
end

'abcdefg'.gsub!(/cde/, 'xyz')
# => "abxyzfg"
'abcdefg'.gsub!(/cde/) { |m| m.split('').join(',') }
# => "abc,d,efg"

path = `realpath /tmp`
# => "/private/tmp\n"

begin # loop

  if true
  elsif false
  else
  end

  i = 0

  while i > 1
  end

  for a in 1..5 do
  end

  1..5.each { |i| }

  loop do
    break if 1 == 1
  end

  until 1 == 1 do
  end
end

# Exception
def foo
  begin
    raise 'an error'
  rescue e
    raise Exception.new e.message
  ensure
    # close my connection
  end
rescue Exception => e

else

end
