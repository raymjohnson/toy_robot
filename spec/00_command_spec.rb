RSpec.describe ToyRobot::Command do
  context 'Validates all commands' do
    it "validates initial command 'REPORT'" do
      expect(ToyRobot::Command.valid?('REPORT')).to be true
    end

    it "validates initial command 'MOVE'" do
      expect(ToyRobot::Command.valid?('MOVE')).to be true
    end

    it "invalidates captilize command 'Move'" do
      expect(ToyRobot::Command.valid?('Move')).to be false
    end

    it "invalidates lowercase command 'move'" do
      expect(ToyRobot::Command.valid?('Move')).to be false
    end

    it "validates initial command 'LEFT'" do
      expect(ToyRobot::Command.valid?('LEFT')).to be true
    end

    it "validates initial command 'RIGHT'" do
      expect(ToyRobot::Command.valid?('RIGHT')).to be true
    end

    it "validates initial command 'PLACE 0,0,NORTH'" do
      expect(ToyRobot::Command.valid?('PLACE 0,0,NORTH')).to be true
    end

    it "invalidates command with coordinate outside 1..4 'PLACE 5,0,NORTH'" do
      expect(ToyRobot::Command.valid?('PLACE 5,0,NORTH')).to be false
    end

    it "invalidates command without a space 'PLACE0,0,NORTH'" do
      expect(ToyRobot::Command.valid?('PLACE0,0,NORTH')).to be false
    end

    it "invalidates command with only two arguments '0,0'" do
      expect(ToyRobot::Command.valid?('0,0')).to be false
    end

    it "invalidates command with one missing argument 'PLACE 0,0'" do
      expect(ToyRobot::Command.valid?('PLACE 0,0')).to be false
    end
  end

end

