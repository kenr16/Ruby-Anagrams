require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The anagrams path', {:type => :feature}) do
  it('Takes an pair of inputted strings and determines whether or not they are anagrams.') do
    visit('/')
    fill_in('first_string', :with => 'Hello')
    fill_in('second_string', :with => 'Olleh')
    click_button('Submit')
    expect(page).to have_content("These words are anagrams.  These words are also palindromes.")
  end

  it('Takes an pair of inputted strings and determines whether or not they are anagrams.') do
    visit('/')
    fill_in('first_string', :with => 'Ruby')
    fill_in('second_string', :with => 'Seeing')
    click_button('Submit')
    expect(page).to have_content("These words are antigrams.")
  end

end
