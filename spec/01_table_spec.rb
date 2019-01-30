RSpec.describe ToyRobot::Table do
  context 'create a valid table' do
    subject { described_class.new(width: 5, height: 5) }

    it 'returns the width' do
      expect(subject.width).to eq(5)
    end

    it 'returns the height' do
      expect(subject.height).to eq(5)
    end
  end

  context 'Invalid table' do
    it 'raises an argument error' do
      expect { ToyRobot::Table.new(width: 5) }.to raise_error(ArgumentError)
    end
  end
end
