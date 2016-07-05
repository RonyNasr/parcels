require('capybara/rspec')
require('launchy')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('gathers the dimensions and weight of the parcel and returns the cost to ship') do
    visit('/')
    fill_in('length', :with => '2')
    fill_in('height', :with => '5')
    fill_in('depth', :with => '8')
    fill_in('weight', :with => '10')
    click_button('submit')
    expect(page).to have_content(50)
  end
end
