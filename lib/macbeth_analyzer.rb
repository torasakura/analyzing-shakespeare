require 'nokogiri'

class MacbethAnalyzer
  IGNORED_CHARACTERS = ["ALL"]

  def initialize(xml_file)
    @xml_file = xml_file
    @doc = Nokogiri::XML(@xml_file)
  end

  def analyze
    @doc.xpath("//SPEECH").each_with_object(Hash.new(0)) do |speech, result|
      speaker = speech.at_xpath("SPEAKER").content
      if not IGNORED_CHARACTERS.include?(speaker)
        result[speaker] += speech.xpath('LINE').length 
      end
    end
  end

  def analyze2
    result = Hash.new(0)
    @doc.xpath("//SPEECH").each do |speech|
      speaker = speech.at_xpath("SPEAKER").content
      if not IGNORED_CHARACTERS.include?(speaker)
        result[speaker] += speech.xpath('LINE').length 
      end
    end
    result
  end

end