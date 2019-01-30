RSpec.describe ToyRobot::Operator do

  describe 'reading the file' do
    it 'sends each command' do
      file = 'command.txt'
      File.readlines(file).map do |commands|
        commands.split.map do |command|
          command
        end
        binding.pry
      end
    end
  end
end