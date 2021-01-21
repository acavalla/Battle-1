require 'game'

describe Game do

  subject(:game) { described_class.new("Anna", "Sean")}

  describe '#initialize' do
    it 'has to two player instances' do
      expect(game.player_1).to eq("Anna")
      expect(game.player_2).to eq("Sean")
    end
  end

  describe '#attack' do
    let(:player) { double :player }
    it 'responds to method attack' do
      expect(game).to respond_to(:attack)
    end

    it 'reduces the player hit points' do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end
  end
end
