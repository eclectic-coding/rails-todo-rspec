require 'rails_helper'

RSpec.feature 'User Sees OwnTodos', type: :feature do
  scenario "doesn't see other todos" do
    Todo.create!(title: 'Cut grass', email: 'someone@example.com')

    sign_in_as 'someone@example.com'

    expect(page).to have_css '.todos li', text: 'Cut grass'
  end
end
