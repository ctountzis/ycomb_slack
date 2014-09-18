require 'nokogiri'
require 'open-uri'
require 'pry'

module YcombSlack
  class ResponseHandler

    attr_accessor :doc, :target_elem

    def initialize
      @doc = Nokogiri::HTML(open('https://news.ycombinator.com'))
      @target_elem = doc.css('table').at(2).children.first.css('td').last.children.first
    end

    def get_last_post_title
      target_elem.children.text
    end

    def get_last_post_link
      elem.attributes["href"].value
    end
  end
end
