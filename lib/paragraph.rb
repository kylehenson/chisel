class Paragraph

  def parse(document)
    if document.class == String
      "<p>\n #{document} \n</p>"# document [0] != "#"
    # "<p>" + document + "</p>"
  end
  end

end
