#!/usr/bin/env ruby

require 'ycomb_slack'

ycombinator_handler = YcombSlack::YcombinatorHandler.new
slack_handler = YcombSlack::SlackHandler.new "https://iayawa.slack.com/services/hooks/incoming-webhook?token=OlBYfsZCkoZ4jrc1o932q9gi", ycombinator_handler

slack_handler.send_payload
