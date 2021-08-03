class UserService 
  def self.find_users(name = nil)
    return User.all.order(:created_at) if name.blank?

    User.where("name LIKE :name", name: "%#{ name }%").order(:created_at)
  end
end