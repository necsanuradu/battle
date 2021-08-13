require "./lib/game.rb"

describe Game do
  subject = described_class.new('a','b')
  let(:player){ double :player, name: "computer", health: 60}
  it "check on attack the hp of the player attacked gets reduced by 10" do 
    # allow(player).to receive(:health).and_return(60)
    expect{ subject.attack(player) }.to eq(50)
  end

end