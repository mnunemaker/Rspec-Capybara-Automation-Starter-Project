require 'spec_helper'
require 'capybara/rspec'

feature 'Google', :type => :feature, :js => :true do
	scenario 'execute a search' do
#		binding.pry
# visit Google and search for text and click Google Search button
    visit ('https://www.google.com')
    fill_in('q', :with => 'Samuel Hotop')
    click_button('Google Search')

#look for specific text results
		expect(page).to have_content("Hotop")
	end
end


# bundle exec rspec spec/features/google_spec.rb