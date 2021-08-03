class UserService 
  def self.find_users(name = nil)
    return User.all if name.blank?

    User.where("name LIKE :name", name: "%#{ name }%")
  end
end