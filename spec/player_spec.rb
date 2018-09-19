require 'player'

describe Player do
  subject { described_class.new('Bob')}

  describe '#name' do
    it 'returns a players name' do
      expect(subject.name).to eq 'Bob'
    end
  end
end
