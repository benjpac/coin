require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('allergies', {:type => :feature}) do
  it('Returns the allergies based on the number entered') do
    visit('/')
    fill_in('allergy', :with => 131)
    click_button('Allergy')
    expect(page).to have_content(["cats", "peanuts", "eggs"])
  end
end
