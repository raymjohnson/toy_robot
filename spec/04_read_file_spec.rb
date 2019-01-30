RSpec.describe do

  describe 'reading the file' do
    it 'sends each command' do
      file = 'test_command.txt'
      File.readlines(file).map do |command|
        ToyRobot::Operator.handle_command(command.split.join(' '))
      end

      ToyRobot::Operator.report
      expect(ToyRobot::Operator.report).to eq("My current position is: 0, 0, NORTH")
    end
  end
end
