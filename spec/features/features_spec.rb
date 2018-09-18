require 'spec_helper'

describe Battle do
  feature 'Testing the homepage' do
    it 'able to see the words hello world!' do
      visit '/'
      expect(page).to have_content('Hello battle!')
    end
  end

  feature 'players enter their details in form' do
    it "fills in information" do
      sign_in_and_play
      expect(page).to have_content('PLAYER ONE VS. PLAYER TWO!!!')
    end
  end
  
  feature 'player one checks player two\'s HP' do
    it "allows P1 to check HP" do
      sign_in_and_play
      within ('div#player2_hitpoint') do
        expect(page).to have_content('100')
      end
    end
  end

end
