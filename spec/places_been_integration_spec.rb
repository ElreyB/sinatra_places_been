require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('places been', {:type => :feature}) do

it "display specific place on page" do
  visit('/')
  fill_in('place', :with => 'Japan')
  click_button('Submit!')
  expect(page).to have_content("Japan")
end


end
