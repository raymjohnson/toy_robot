RSpec.describe ToyRobot::Command do
  # before do
  #   @robot = Robot.new()
  # end

  it "validates initial command 'REPORT'" do
    expect(ToyRobot::Command.command_validation('REPORT')).to eq('My current position is: 0, 0, NORTH')
  end

  it "validates initial command 'MOVE'" do
    expect(ToyRobot::Command.command_validation('MOVE')).to eq('MOVE')
  end

  it "invalidates captilize command 'Move'" do
    expect(ToyRobot::Command.command_validation('Move')).to be nil
  end

  it "invalidates lowercase command 'move'" do
    expect(ToyRobot::Command.command_validation('Move')).to be nil
  end

  it "validates initial command 'LEFT'" do
    expect(ToyRobot::Command.command_validation('LEFT')).to eq('LEFT')
  end

  it "validates initial command 'RIGHT'" do
    expect(ToyRobot::Command.command_validation('RIGHT')).to eq('RIGHT')
  end

  it "validates initial command 'PLACE 0,0,NORTH'" do
    expect(ToyRobot::Command.command_validation('PLACE 0,0,NORTH')).to eq("PLACE 0,0,NORTH")
  end

  it "invalidates command with coordinate outside 1..4 'PLACE 5,0,NORTH'" do
    expect(ToyRobot::Command.command_validation('PLACE 5,0,NORTH')).to be nil
  end

  it "invalidates command without a space 'PLACE0,0,NORTH'" do
    expect(ToyRobot::Command.command_validation('PLACE0,0,NORTH')).to be nil
  end

  it "invalidates command with only two arguments '0,0'" do
    expect(ToyRobot::Command.command_validation('0,0')).to be nil
  end

  it "invalidates command with one missing argument 'PLACE 0,0'" do
    expect(ToyRobot::Command.command_validation('PLACE 0,0')).to be nil
  end

end

