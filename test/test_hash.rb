require 'test/unit'
require 'hash'

class TestHash < Test::Unit::TestCase
  
  def test_should_sort_keys
    orig = {
      :b => "z",
      :a => "y"
    }

    sorted = orig.sort_by_key
    assert_equal sorted.keys, [:a, :b]
  end

  def test_should_sort_sub_keys
    orig = {
      :b => 5,
      :a => {
        "bbb" => 1,
        "aaa" => 9
      }
    }

    sorted = orig.sort_by_key
    assert_equal [:a, :b], sorted.keys
    assert_equal ["aaa", "bbb"], sorted[:a].keys
  end

end