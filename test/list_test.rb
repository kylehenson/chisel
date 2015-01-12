require './test_helper'
require '../lib/list'

class ListTest < Minitest::Test
  attr_reader :list

  def setup
    @document = "* Sushi\n* Barbeque\n* Mexican"
    @list = List.new(document)
  end

  def test_it_exists
    assert list
  end

  def test_it_can_convert_to_bullet_points
    document ="* Sushi\n* Barbeque\n* Mexican"
    parsed =
"<ul>
<li>Sushi</li>
<li>Barbeque</li>
<li>Mexican</li>
</ul>"
    assert_equal parsed, list.parse(document)
  end
end
