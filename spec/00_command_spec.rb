RSpec.describe ToyRobot::Command do
  context 'Validates all commands' do
    it "validates initial command 'REPORT'" do
      expect(ToyRobot::Command.valid_command('REPORT')).to eq('REPORT')
    end

    it "validates initial command 'MOVE'" do
      expect(ToyRobot::Command.valid_command('MOVE')).to eq('MOVE')
    end

    it "invalidates captilize command 'Move'" do
      expect(ToyRobot::Command.valid_command('Move')).to eq('')
    end

    it "invalidates lowercase command 'move'" do
      expect(ToyRobot::Command.valid_command('Move')).to eq('')
    end

    it "validates initial command 'LEFT'" do
      expect(ToyRobot::Command.valid_command('LEFT')).to eq('LEFT')
    end

    it "validates initial command 'RIGHT'" do
      expect(ToyRobot::Command.valid_command('RIGHT')).to eq('RIGHT')
    end

    it "validates initial command 'PLACE 0,0,NORTH'" do
      expect(ToyRobot::Command.valid_command('PLACE 0,0,NORTH')).to eq('PLACE 0,0,NORTH')
    end

    it "invalidates command with coordinate outside 1..4 'PLACE 5,0,NORTH'" do
      expect(ToyRobot::Command.valid_command('PLACE 5,0,NORTH')).to be nil
    end

    it "invalidates command without a space 'PLACE0,0,NORTH'" do
      expect(ToyRobot::Command.valid_command('PLACE0,0,NORTH')).to eq('')
    end

    it "invalidates command with only two arguments '0,0'" do
      expect(ToyRobot::Command.valid_command('0,0')).to eq('')
    end

    it "invalidates command with one missing argument 'PLACE 0,0'" do
      expect(ToyRobot::Command.valid_command('PLACE 0,0')).to be nil
    end
  end
end
