module YcombSlack
  class XmlHandler
  
    attr_accessor :xml_string

    def initialize
      @xml_string = get_xml_string
    end

    private
    def get_xml_string
      system "curl https://news.ycombinator.com | grep '<table>'"
    end
  end
end
