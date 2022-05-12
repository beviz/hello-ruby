class Devise::SessionController
  def create
    @user.save
    yield(@user) if block_given?
    sign_in_and_redirect @user
  end
end

class MySessionController < Devise::SessionController
  def create
    super do |user|
      puts "saved user #{user.name}"
    end
  end
end
