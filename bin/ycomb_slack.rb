#!/usr/bin/env ruby

require 'ycomb_slack'

xml_handler = YcombSlack::XmlHandler.new

puts xml_handler.xml_string
