require 'nokogiri'
require 'open-uri'

module YcombSlack
  class ResponseHandler

    attr_accessor :doc

    def initialize
      @doc = Nokogiri::HTML(open('http://news.ycombinator.com'))
    end
  end
end
