require 'player'

describe Player do
  subject(:Dan) { Player.new('Dan') }

  describe '#name' do
    it 'returns the name' do
      expect(name).to eq 'Dan'
    end
  end
end
