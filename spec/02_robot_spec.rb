RSpec.describe ToyRobot::Robot do
  context 'place the robot on the table' do
    subject { ToyRobot::Robot.new()}

    it 'has a default x position' do
      expect(subject.x).to eq(0)
    end

    it 'has a default y position' do
      expect(subject.y).to eq(0)
    end

    it 'has a default North Facing position' do
      expect(subject.f).to eq('NORTH')
    end
  end
end
