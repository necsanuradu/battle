def sign_in_and_play
  fill_in(:player1, with: 'Player1')
  fill_in(:player2, with: 'Player2')
  find("//form/[type='submit']").click
  find("//section[@id='player_name']")
end