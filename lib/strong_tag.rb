class StrongTag

  def parse(document)
    document.gsub!(/\*\*(...+)\*\*/) do |emphasis|
      "<strong>#{$1}</strong>"
    end
  end

  def change_ampersand(document)
    document.gsub!("&", "&amp;")
  end

 end
