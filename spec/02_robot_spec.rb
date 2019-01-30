require 'pry-byebug'

RSpec.describe ToyRobot::Robot do
  describe 'Robot position' do
    context 'the robot has a default position on the table' do
      # ask Ryan about why we don't need to create a subject here and it still works

      it 'has a default x position' do
        expect(subject.x).to eq(0)
      end

      it 'has a default y position' do
        expect(subject.y).to eq(0)
      end

      it 'has a default North Facing position' do
        expect(subject.f).to eq('NORTH')
      end

      it 'reports its current position' do
        expect(subject.report).to eq('My current position is: 0, 0, NORTH')
      end
    end

    context 'the robot has a custom position on the table' do
      robot = ToyRobot::Robot.new(x: 1, y: 2, f: 'WEST')
      it 'has a custom x position' do
        expect(robot.x).to eq(1)
      end

      it 'has a custom y position' do
        expect(robot.y).to eq(2)
      end

      it 'has a custom North Facing position' do
        expect(robot.f).to eq('WEST')
      end

      it 'reports its current position' do
        expect(robot.report).to eq('My current position is: 1, 2, WEST')
      end
    end
  end

  describe 'robot movement' do
    context 'move the robot forward' do
      # move forward
      it 'moves the robot' do
        robot = ToyRobot::Robot.new
        robot.move
        expect(robot.report).to eq('My current position is: 0, 1, NORTH')
      end

      it 'will not move the robot if it is on the edge' do
        robot = ToyRobot::Robot.new(f: 'WEST')
        robot.move
        expect(robot.report).to eq('My current position is: 0, 0, WEST')
      end

      it 'will not move the robot if it is on the edge' do
        robot = ToyRobot::Robot.new(x: 4, y: 4, f: 'EAST')
        robot.move
        expect(robot.report).to eq('My current position is: 4, 4, EAST')
      end
    end

    context 'turn the robot' do
      it 'turns the robot left' do
        robot = ToyRobot::Robot.new
        robot.turn_left
        expect(robot.report).to eq('My current position is: 0, 0, WEST')
      end

      it 'turns the robot right' do
        robot = ToyRobot::Robot.new
        robot.turn_right
        expect(robot.report).to eq('My current position is: 0, 0, EAST')
      end
    end
  end
end
