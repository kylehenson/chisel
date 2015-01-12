require './test_helper'
require '../lib/emphasis'

class EmphasisTest < Minitest::Test
  attr_reader :emphasis

  def setup
    @emphasis = Emphasis.new
  end

  def test_it_exists
    assert emphasis
  end


  def test_converts_single_asterisk
   assert_equal "<em>have</em>", emphasis.parse("*have*")
  end

end
