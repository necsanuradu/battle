feature "Initial health state 60" do

  scenario 'Displays player 1 health' do
    visit('/play')
    score = find("//section[@id='health']/div[@player1='60']")
    expect(score).not_to be(nil)
  end

  scenario 'Dsiaplays player 2 health' do
    visit('/play')
    score = find("//section[@id='health']/div[@player2='60']")
    expect(score).not_to be(nil)
  end

end
