require 'player'

describe Player do
  subject(:dan) { Player.new('Dan') }
  subject(:mick) { Player.new('Mick') }

  describe '#name' do
    it 'returns the name' do
      expect(dan.name).to eq 'Dan'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(dan.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(mick).to receive(:receive_damage)
      dan.attack(mick)
    end
  end

  describe '#receive_damage' do
    it 'reduces he player HP' do
      expect { dan.receive_damage }.to change { dan.hit_points }.by(-10)
    end
  end
end
