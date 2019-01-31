RSpec.describe do

  describe 'reading the file' do
    let(:operator) { ToyRobot::Operator.new }
    it 'sends each command' do
      file = 'test_command.txt'
      File.readlines(file).map do |command|
        operator.handle_command(command.split.join(' '))
      end

      operator.report
      expect(operator.report).to eq("My current position is: 0, 0, NORTH")
    end
  end
end
