require 'player'

describe Player do
  let(:player1) { described_class.new('cain')}
  let(:player2) { described_class.new('abel')}

  describe '#name' do
    it 'returns a players name' do
      expect(player1.name).to eq 'cain'
    end
  end

  describe '#hitpoints' do
    it 'returns the players hitpoints which start at 100' do
      expect(player1.hitpoints).to eq 100
    end
  end

  describe '#attack' do
    it 'allows a player to attack another' do
      expect(player2).to receive(:reduce_hitpoints)
      player1.attack(player2)
    end
  end

  describe '#reduce_hitpoints' do
    it 'reduces a players hitpoints by 10' do
      player1.reduce_hitpoints
      expect(player1.hitpoints).to eq 90
    end
  end
end
