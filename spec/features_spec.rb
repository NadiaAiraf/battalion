require 'spec_helper'

describe Battle do
  before(:each) do
    visit '/'
  end

  feature 'Testing the homepage' do
    it 'able to see the words hello world!' do
      expect(page).to have_content('Hello battle!')
    end
  end

  feature 'players enter their details in form' do
    it "fills in information" do
      fill_in 'name', with: 'Player One'
      click_button('Submit')
      expect(page).to have_content('Player One')
    end
  end
end
