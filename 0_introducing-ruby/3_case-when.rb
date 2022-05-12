def check(value)
  odd = proc(&:odd?)
  even = proc(&:even?)

  case value
  when "li", /^zhang/
    "hi #{value}"
  when 1..16
    "range"
  when Exception
    "is string"
  when odd
    "odd value"
  when even
    "even value"
  else
    "else"
  end
end

["li", "zhangsan", 12, Exception.new, 200, 201].each { |v| puts check(v) }
