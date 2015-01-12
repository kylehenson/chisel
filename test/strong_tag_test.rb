require './test_helper'
require '../lib/strong_tag'

class StrongTagTest < Minitest::Test
  attr_reader :strong_tag

  def setup
    @strong_tag = StrongTag.new
  end

  def test_it_exists
    assert strong_tag
  end

  def test_it_changes_ampersands
    assert_equal "Food &amp; Wine", strong_tag.change_ampersand("Food & Wine")
  end

  def test_converts_double_asterisks
    parse_document = strong_tag.parse("**Food & Wine**")
    parsed_and_strong_tag = strong_tag.change_ampersand(parse_document)
    assert_equal "<strong>Food &amp; Wine</strong>", parsed_and_strong_tag
  end
end
