require 'rails_helper'

RSpec.feature 'User Visits Homepages', type: :feature do
  scenario 'successful' do
    visit root_path

    expect(page).to have_css 'h1', text: 'Todos'
  end
end
