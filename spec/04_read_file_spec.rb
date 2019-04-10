RSpec.describe ReadFile do

  describe 'reading the file' do
    let(:operator) { ToyRobot::Operator.new }


    it 'sends each command' do

      file = 'test_command.txt'
      self.read_file(file)
      operator.report
      expect(operator.report).to eq("My current position is: 0, 0, NORTH")
    end


  end
en
