require "./lib/player.rb"

describe Player do

  it "checks a player is created the name is stored" do
    subject = described_class.new("radu")
    expect(subject.name).to eq("radu")
  end

  it "default hp is 60" do
    expect(subject.health).to eq(60)
  end

end