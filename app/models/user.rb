class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
  validates :birthdate, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :address, presence: true
  validates :housing_type, presence: true

  validate :birthdate_must_be_greater_than_18
  validate :validate_city_user_limit, on: :create

  enum gender: { female: 'female', male: 'male' }
  enum housing_type: { home: 'home', apartment: 'apartment', country_estate: 'country estate' }

  def birthdate_must_be_greater_than_18
    if birthdate.present? && birthdate > 18.years.ago.to_date
      errors.add(:birthdate, 'Debe ser mayor de 18 años')
    end
  end

  def validate_city_user_limit
    if city.present?
      city_users_count = User.where(city: city).count
      if city_users_count >= 3
        errors.add(:city, "Ha alcanzado el límite de usuarios para esta ciudad (máximo 3).")
      end
    end
  end

end

