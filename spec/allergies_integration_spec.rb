require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('using the allergy lookup method', {:type => :feature}) do
  it('takes the user from inputing an allergy score, to seeing the allergies') do
    visit('/')
    fill_in('allergy_score', :with => 3)
    click_button('Submit')
    expect(page).to have_content('eggs')
    expect(page).to have_content('peanuts')
  end
end
