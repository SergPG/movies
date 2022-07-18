# frozen_string_literal: true

FactoryBot.define do
  factory :movie do
    association :category
    title { Faker::Lorem.word }
    text { Faker::Lorem.paragraph(sentence_count: 4) }
  end
end
