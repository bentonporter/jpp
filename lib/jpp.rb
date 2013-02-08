require 'json'
require 'optparse'
require 'hash'

class Jpp
  VERSION = '0.2'

  def main()
    options = {}

    parser = OptionParser.new do |opts|
      opts.banner = 'Usage: jpp [options] file'

      opts.on('-s', '--sort', 'Sort json alphabetically by key') do |s|
        options[:sort] = s
      end

      opts.on('-v', '--version', 'Show version') do |v|
        puts VERSION
        exit
      end
    end

    begin parser.parse!
    rescue OptionParser::InvalidOption => message
      puts message
      puts parser
      exit 1
    end

    input = JSON.load(ARGF.read)
    input = input.sort_by_key() if options[:sort]
    output = JSON.pretty_generate(input)
    puts output
  end
end