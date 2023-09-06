class UserPresenter
  def initialize(users)
    @users = users
  end

  def count_users_by_city(city)
    @users.where(city: city).count
  end
end

