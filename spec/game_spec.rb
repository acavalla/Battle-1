require 'game'

describe Game do

  describe '#attack' do
    let(:player) { double :player }
    it 'responds to method attack' do
      expect(subject).to respond_to(:attack)
    end

    it 'reduces the player hit points' do
      expect(player).to receive(:receive_damage)
      subject.attack(player)
    end
  end


end
