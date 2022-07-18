require 'rails_helper'

RSpec.feature 'Movies categories filter', type: :feature do
  include Warden::Test::Helpers
  
  before do
    create_list(:category, 10)
    create_list(:movie, 10)
  end 

  scenario 'categories filter' do
    visit root_path

    select(category.name, from:'category_id' )


end  