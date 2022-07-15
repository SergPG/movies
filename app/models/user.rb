class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
        :rememberable, :validatable

  def admin?
    true
  end
end
