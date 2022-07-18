# frozen_string_literal: true

class Movie < ApplicationRecord
  LIMIT_IN_PAGE = 3

  extend FriendlyId

  belongs_to :category

  validates :title, presence: true
  validates :category_id, presence: true

  rating
  paginates_per LIMIT_IN_PAGE
  friendly_id :title, use: :slugged
end
