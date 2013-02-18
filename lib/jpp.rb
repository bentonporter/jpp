require 'json'
require 'hash'
require 'jpp/command_line'

module Jpp
  class Jpp
    def main()
      options = CommandLine.parse(ARGV)
      
      if (options.version) 
        puts VERSION
        exit
      end

      input = JSON.load(ARGF.read)
      input = input.sort_by_key() if options.sort and input.is_a?(Hash)       # TODO support sorting hashes within an array
      output = JSON.pretty_generate(input, :indent => ' ' * options.indent)
      puts output
    end
  end
end