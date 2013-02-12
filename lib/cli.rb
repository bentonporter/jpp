require 'optparse'
require 'ostruct'
require 'version'

module Jpp
  class Cli
    def initialize
      @options = OpenStruct.new
      @options.indent = 2
      @options.sort = false
    end

    def parse(argv)
      parser = OptionParser.new do |opts|
        opts.banner = 'Usage: jpp [options] file'

        opts.on('-i', '--indent N', Integer, "Number of spaces to indent (default: #{@options.indent}) ") do |i|
          @options.indent = i
        end

        opts.on('-s', '--sort', 'Sort json alphabetically by key') do |s|
          @options.sort = s
        end

        opts.on('-v', '--version', 'Show version') do |v|
          puts VERSION
          exit
        end
      end

      begin parser.parse!
      rescue OptionParser::ParseError => message
        puts message
        puts parser
        exit 1        # TODO throw/propagate and let Jpp::Jpp exit 
      end  

      @options
    end
  end
end