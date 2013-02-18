require 'test/unit'
require 'jpp/command_line'

class TestCommandLine < Test::Unit::TestCase

  def test_default_sort
    options = Jpp::CommandLine.parse([])      
    assert !options.sort
  end

  def test_default_indent
    options = Jpp::CommandLine.parse([])      
    assert_equal 2, options.indent
  end

  def test_default_version
    options = Jpp::CommandLine.parse([])      
    assert !options.version
  end

  def test_sort
    options = Jpp::CommandLine.parse(['-s'])      
    assert options.sort
  end

  def test_indent
    options = Jpp::CommandLine.parse(['-i', '3'])      
    assert_equal 3, options.indent
  end

  def test_version
    options = Jpp::CommandLine.parse(['-v'])      
    assert options.version    
  end

end