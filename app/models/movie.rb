class Movie < ApplicationRecord
  
  LIMIT_IN_PAGE = 3 

    belongs_to :category
    
    validates :title, presence: true
    validates :category_id, presence: true

    paginates_per LIMIT_IN_PAGE
  end
  