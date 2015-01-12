class Heading

  def parse(document)

  if document [0..4] == "#####"
    document.gsub!("#####","<h5>")
    document + "</h5>"
    
  elsif document [0..3] == "####"
     document.gsub!("####","<h4>")
     document + "</h4>"

   elsif document[0..2] == "###"
      document.gsub!("###","<h3>")
      document + "</h3>"

   elsif document[0..1] == "##"
      document.gsub!("##","<h2>")
      document + "</h2>"

    elsif
      document[0] == "#"
      document.gsub!("#","<h1>")
      document + "</h1>"

    else
      document
    end
  end
 end

  document = "###Hey everyone!"
  heading = Heading.new
  puts heading.parse(document)
