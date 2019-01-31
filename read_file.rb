lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'toy_robot'

filename = ARGV[0]
operator = ToyRobot::Operator.new
File.readlines(filename).map do |command|
  operator.handle_command(command.split.join(' '))
end




