require 'pry-byebug'

RSpec.describe ToyRobot::Operator do

  it 'creates a new robot with the PLACE command' do
    command = "PLACE, 0,0,NORTH"
    ToyRobot::Command.valid?(command)
    Operator.place
    
  end
end