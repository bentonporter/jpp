$:.unshift File.expand_path("../ext", __FILE__)
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
    assert_equal sorted.keys, ['apple', 'pizza', 'zoo']
  end

  def test_that_it_sorts_integers
    orig = {
      4 => 1,
      1 => 2,
      3 => 3
    }

    sorted = orig.sort_by_key
    assert_equal sorted.keys, [1, 3, 4]
  end

  def test_that_it_sorts_special_chars
    orig = {
      'aaa' => 1,
      '~ccc' => 2,
      'zzz' => 3
    }

    sorted = orig.sort_by_key
    assert_equal sorted.keys, ['aaa', 'zzz', '~ccc']
  end

  def test_that_it_sorts_nested_hashes
    orig = {
      :b => 5,
      :a => {
        'bbb' => 1,
        'aaa' => 9
      }
    }

    sorted = orig.sort_by_key
    assert_equal [:a, :b], sorted.keys
    assert_equal ['aaa', 'bbb'], sorted[:a].keys
  end

  # This is not currently supported, so might as well verify the expected behavior
  def test_that_hashes_inside_an_array_are_not_sorted
    orig = {
      :b => 5,
      :a => [{
        'bbb' => 1,
        'aaa' => 9
      }]
    }

    sorted = orig.sort_by_key
    assert_equal [:a, :b], sorted.keys
    assert_equal ['bbb', 'aaa'], sorted[:a].first.keys
  end

end