[user1, user2].index_by(&:last_name)
[user1, user2].index_with() # activesupport

toggle = if condition
  true
else
  false
end

toggle = case x
when con1, con2: true
when con3: false
end

def method(name, *args, **options)
end

method('A', 2, 3, enable: false, disable: true)

User.new.tap |u|
  u.name = 'Kratos'
end

