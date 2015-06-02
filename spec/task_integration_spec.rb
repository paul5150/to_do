require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('task path', {:type => :feature}) do
  it('returns a task') do
    visit('/')
    fill_in('description', :with => 'eat')
    click_button('Add task')
    expect(page).to have_content('The task has been successfully submitted! Back')
  end
end
