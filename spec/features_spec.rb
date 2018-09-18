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
      fill_in 'player1', with: 'Player One'
      fill_in 'player2', with: 'Player Two'
      click_button('Submit')
      expect(page).to have_content('Hello, Player One and Player Two')
    end
  end
end
