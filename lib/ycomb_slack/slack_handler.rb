require 'json'

module YcombSlack
  class SlackHandler
  
    attr_accessor :webhook_url, :ycombinator_handler

    def initialize(webhook_url, ycombinator_handler)
      @webhook_url = webhook_url
      @ycombinator_handler = ycombinator_handler
    end

    def payload
      { channel: "#general",
        username: "news.ycombinator-slack",
        text: "A new post from news.ycombinator.\n
        <#{ycombinator_handler.get_last_post_link}|#{ycombinator_handler.get_last_post_title}>" }.to_json
    end

    def send_payload
      system "curl -X POST --data-urlencode 'payload=#{payload}' #{webhook_url}"
    end
  end
end
