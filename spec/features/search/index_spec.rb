require 'rails_helper'

RSpec.describe 'search index page' do
  it 'has a poem and its attributes as well as tone' do
    visit '/search?author=Emily Dickinson'

    expect(page).to have_content("Not at Home to Callers")
    expect(page).to have_content("Emily Dickinson")
    expect(page).to have_content("Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --")
    expect(page).to have_content("Joy")
  end
end
