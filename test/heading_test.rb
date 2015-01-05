require './test_helper'
require '../lib/heading'

class HeadingTest < Minitest::Test 
  attr_reader :heading

  def setup
    @heading = Heading.new
  end

  def test_it_exists
    assert heading
  end

  def test_it_converts_one_hashtag

    assert_equal "<h1> My Life in Desserts</h1>", heading.parse("# My Life in Desserts")
  end

  def test_it_converts_two_hashtags

    assert_equal "<h2> Chapter 1: The Beginning</h2>", heading.parse("## Chapter 1: The Beginning")
  end

  def test_it_converts_three_or_more_hashtags

     assert_equal "<h3>holla!</h3>", heading.parse("###holla!")
  end
end