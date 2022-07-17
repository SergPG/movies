
require 'faker'

FactoryBot.define do
  sequence :email do |_n|
    Faker::Internet.email
  end

  factory :user do
    email
    password { 'password' }
    password_confirmation { 'password' }
  end
end