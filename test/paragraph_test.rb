require './test_helper'
require '../lib/paragraph'
require '../lib/emphasis'

class ParagraphTest < Minitest::Test
  attr_reader :paragraph, :emphasis

  def setup
    @paragraph = Paragraph.new
    @emphasis = Emphasis.new
  end

  def test_it_exists
    assert paragraph
  end


  def test_can_tag_a_paragraph
    document = "You just *have* to try the cheesecake, he said. Ever since it appeared in
    **Food & Wine** this place has been packed every night."
    parsed_document = @emphasis.parse(document)
    # binding.pry
    
    emphasis_document = emphasis.parse(document)
    s_e_document = strong_tag.parse(emphasis_document)

    assert_equal '<p>
  "You just <em>have</em> to try the cheesecake," he said. "Ever since it appeared in
  <strong>Food &amp; Wine</strong> this place has been packed every night."
</p>', paragraph.parse(document)
  end

end
