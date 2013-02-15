require 'json'
require 'hash'
require 'jpp/command_line'

module Jpp
  class Jpp
    def main()
      options = CommandLine.parse(ARGV)
      input = JSON.load(ARGF.read)
      input = input.sort_by_key() if options.sort  # TODO make sure input is a hash before calling sort_by_key
      output = JSON.pretty_generate(input, :indent => ' ' * options.indent)
      puts output
    end
  end
end