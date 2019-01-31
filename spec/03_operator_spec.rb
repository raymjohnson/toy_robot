require 'pry-byebug'

RSpec.describe ToyRobot::Operator do
  it 'creates a new robot with the PLACE command' do
    command = 'PLACE 0,0,NORTH'
    # operator = ToyRobot::Operator.new
    subject.place(command)
    expect(subject.report).to eq('My current position is: 0, 0, NORTH')
  end

  describe 'operator triggers robot movement' do
    context 'operator triggers the robot forward' do
      # move forward
      it 'operators moves the robot' do
        command = 'PLACE 0,0,NORTH'
        subject.place(command)
        subject.move
        expect(subject.report).to eq('My current position is: 0, 1, NORTH')
      end

      it 'will not move the robot if it is on the edge' do
        command = 'PLACE 0,0,WEST'
        subject.place(command)
        subject.move
        expect(subject.report).to eq('My current position is: 0, 0, WEST')
      end

      it 'will not move the robot if it is on the edge' do
        command = 'PLACE 4,4,EAST'
        subject.place(command)
        subject.move
        expect(subject.report).to eq('My current position is: 4, 4, EAST')
      end
    end

    context 'turn the robot' do
      it 'turns the robot left' do
        command = 'PLACE 4,4,EAST'
        subject.place(command)
        subject.turn_left
        expect(subject.report).to eq('My current position is: 4, 4, NORTH')
      end

      it 'turns the robot right' do
        command = 'PLACE 4,4,EAST'
        subject.place(command)
        subject.turn_right
        expect(subject.report).to eq('My current position is: 4, 4, SOUTH')
      end
    end
  end

  describe 'handle command from file' do
    it 'should trigger the command validation and launch the command if true' do
      command = 'PLACE 2,3,WEST'
      subject.handle_command(command)
      expect(subject.report).to eq('My current position is: 2, 3, WEST')
    end

  end
end
