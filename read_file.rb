require 'toy_robot'

filename = ARGV[0]
File.readlines(filename).each do |line|
  ToyRobot::Operator.handle_command(line)
end