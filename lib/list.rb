class List
  attr_reader :document

  def initialize(document)
    @document = document
  end

  def parse
      "<ul>\n#{separate_lines(document)}\n</ul>"# document [0] != "#"
  end

  def separate_lines
    document.gsub!(/\*\s(...+)/) do |emphasis|
      "<li>#{$1}</li>"
    end
  end

end
