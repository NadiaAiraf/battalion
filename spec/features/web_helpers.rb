def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Player One'
  fill_in 'player2', with: 'Player Two'
  click_button('Submit')
end