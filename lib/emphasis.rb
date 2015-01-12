class Emphasis

  def parse(document)
    document.gsub(/\*(...+)\*/) do |emphasis|
      "<>#{$1}</em>"
    # document.sub!("*","<em>")
    #   if document[-1] == "*"
    #     document.chop.insert(-1, "</em>")
      end
  end

end

* Word_one
* Word_two
* Word_three


<li>Word_one</li>
<li>Word_two</li>
<li>Word_three</li>
