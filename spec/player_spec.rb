require 'player'

describe Player do
  subject(:anna) { described_class.new("Anna") }

  describe "#name" do
    it 'knows its name' do
      expect(anna.name).to eq "Anna"
    end
  end
end
