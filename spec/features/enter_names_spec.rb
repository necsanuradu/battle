feature 'testing form features' do

  scenario "we have a form with an input of player1" do
    visit('/')
    #expect(find('//form/input')).not_to be(nil)
    expect(find("//form/input[@name='player1']")).not_to be(nil)
  end

  scenario "checking we have a form for input for player2" do
    visit ('/')
    expect(find("//form/input[@name='player2']")).not_to be(nil)
  end

  scenario "we are testing the submit button" do
    visit ('/')
    expect(find("//form/input[@type='submit']")).not_to be(nil)
  end

  scenario "changes player1 and player2 name value submits and expect landing view to have content" do
    visit ("/")
    # player1 = find("//form/input[@name='player1']")
    # player2 = find("//form/input[@name='player2']")
    fill_in(:player1, with: 'Player1')
    fill_in(:player2, with: 'Player2')
    find("//form/[type='submit']").click
    names = find("//section[@id='player_name']")
    expect(names).to have_content("Player1 vs. Player2")
  end

  scenario 'Displays player 1 health' do
    visit('/play')
    score = find("//section[@id='health']/div[@player1='60/60 HP']")
    expect(score).not_to be(nil)
  end

end
