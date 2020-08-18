require 'rails_helper'

RSpec.feature 'user creates todo', type: :feature do
  scenario 'successfully' do
    sign_in

    click_on 'Add a new Todo'
    fill_in 'Title', with: 'Buy milk'
    click_on 'Create Todo'

    expect(page).to have_css '.todos li', text: 'Buy milk'
  end
end
