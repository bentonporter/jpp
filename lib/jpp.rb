require 'json'
require 'optparse'
require 'ostruct'
require 'hash'

class Jpp
  VERSION = '1.1.0'

  def main()
    # Set default values
    options = OpenStruct.new
    options.indent = 2
    options.sort = false

    parser = OptionParser.new do |opts|
      opts.banner = 'Usage: jpp [options] file'

      opts.on('-i', '--indent N', Integer, "Number of spaces to indent (default: #{options.indent}) ") do |i|
        options.indent = i
      end

      opts.on('-s', '--sort', 'Sort json alphabetically by key') do |s|
        options.sort = s
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
      exit 1
    end

    input = JSON.load(ARGF.read)
    input = input.sort_by_key() if options.sort
    output = JSON.pretty_generate(input, :indent => ' ' * options.indent)
    puts output
  end
end