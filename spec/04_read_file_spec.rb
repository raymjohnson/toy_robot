RSpec.describe ToyRobot::Operator do

  describe 'reading the file' do
    it 'sends each command' do
      file = 'command.txt'
      binding.pry
      File.open(file, 'r') do |line|
        line.first.split("\n")
        # ToyRobot::Operator.handle_command(line)
      end
    end
  end
end