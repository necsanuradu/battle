feature 'attack confirmation' do
  
  scenario 'reveive confirmation after attack' do
    
    sign_in_and_play
    find("//form/input[id='attack']").click
    # click_button 'Attack'
    expect(page).to have_content("Player1 attacked Player2")
  end
end