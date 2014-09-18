#!/usr/bin/env ruby

require 'ycomb_slack'

response_handler = YcombSlack::ResponseHandler.new
slack_handler = YcombSlack::SlackHandler.new "https://iayawa.slack.com/services/hooks/incoming-webhook?token=OlBYfsZCkoZ4jrc1o932q9gi", response_handler

slack_handler.send_payload
