class User
  def initialize(username)
    @username = username
  end

  def valid?
    (3..15) === @username.length
  end
end
