# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Rate movie', type: :feature do
  include Warden::Test::Helpers

  let!(:user) { create :user }
  let!(:movie) { create :movie }
  let(:another_user) { create :user }
  let(:current_rating_id) { "#current_rating#{movie.id}" }

  before do
    another_user.rate movie, 8
    login_as(user)
    # Capybara.current_driver = :selenium_chrome_headless
    Capybara.current_driver = :selenium_chrome
  end

  after { Capybara.use_default_driver }

  scenario 'rate movie', js: true do
    visit root_path
    click_button "modal-rating#{movie.id}"

    sleep(0.5)

    find_field('rating_score', visible: false).set(10)
    click_button('Rate!')

    sleep(0.5)

    expect(page.find(current_rating_id).text).to have_content('9.0')
  end
end
