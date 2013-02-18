$:.unshift File.expand_path("../../ext", __FILE__)
require 'test/unit'
require 'hash'

class TestHash < Test::Unit::TestCase

  def test_that_it_sorts_strings
    orig = {
      'zoo' => 1,
      'apple' => 2,
      'pizza' => 3
    }

    sorted = orig.sort_by_key
    assert_equal ['apple', 'pizza', 'zoo'], sorted.keys
  end

  def test_that_it_sorts_integers
    orig = {
      4 => 1,
      1 => 2,
      3 => 3
    }

    sorted = orig.sort_by_key
    assert_equal [1, 3, 4], sorted.keys
  end

  def test_that_it_sorts_special_chars
    orig = {
      'aaa' => 1,
      '~ccc' => 2,
      'zzz' => 3
    }

    sorted = orig.sort_by_key
    assert_equal ['aaa', 'zzz', '~ccc'], sorted.keys
  end

  def test_that_it_sorts_nested_hashes
    orig = {
      'bob' => 5,
      'anne' => {
        'fred' => 1,
        'catherine' => 9
      }
    }

    sorted = orig.sort_by_key
    assert_equal ['anne', 'bob'], sorted.keys
    assert_equal ['catherine', 'fred'], sorted['anne'].keys
  end

  # This is not currently supported, so might as well verify the expected behavior
  def test_that_hashes_inside_an_array_are_not_sorted
    orig = {
      'horse' => 5,
      'frog' => [{
        'zebra' => 1,
        'lion' => 9
      }]
    }

    sorted = orig.sort_by_key
    assert_equal ['frog', 'horse'], sorted.keys
    assert_equal ['zebra', 'lion'], sorted['frog'].first.keys
  end

end