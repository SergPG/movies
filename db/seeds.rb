# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'

CATEGORIES = [
    'Action', 'Adventure', 'Animation', 'Comedy', 'Documentary',
    'Fantasy', 'Horror', 'Musical', 'Romance', 'Sci-Fi',
    'Thriller', 'War', 'Western'
]
CATEGORIES.each { |category| Category.create(name: category) }

10.times do |index|
    Movie.create(title: Faker::Movie.title,
                 category: Category.find(index + 1),
                 text: Faker::Lorem.paragraph(sentence_count: 4))
    end
4.times { Movie.create(title: Faker::Movie.title, category: Category.first, text: Faker::Lorem.paragraph(sentence_count: 4)) }
User.create!(email: 'admin@admin.com', password: '123456', password_confirmation: '123456', admin: true)