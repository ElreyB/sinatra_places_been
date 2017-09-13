require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('places been', {:type => :feature}) do
  before() do
    PlacesBeen.clear()
  end
it "displays specific location on page" do
  visit('/')
  fill_in('location', :with => 'Japan')
  click_button('Submit!')
  # save_and_open_page
  expect(page).to have_content("Japan")
end


end
