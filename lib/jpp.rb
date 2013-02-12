require 'cli'
require 'hash'
require 'json'

module Jpp
  class Jpp
    def main()
      options = Cli.new.parse(ARGV)
      input = JSON.load(ARGF.read)
      input = input.sort_by_key() if options.sort
      output = JSON.pretty_generate(input, :indent => ' ' * options.indent)
      puts output
    end
  end
end