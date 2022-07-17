class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
        :rememberable, :validatable
  
  rating

  def admin?
    true
  end
end
