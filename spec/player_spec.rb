require 'player'
require 'game'

describe Player do
  subject(:anna) { described_class.new("Anna") }
  subject(:sean) { described_class.new("Sean") }

  describe "#name" do
    it 'knows its name' do
      expect(anna.name).to eq "Anna"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(anna.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { anna.receive_damage }.to change { anna.hit_points }.by(-10)
    end
  end

end
