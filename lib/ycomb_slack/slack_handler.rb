module YcombSlack
  class SlackHandler
  
    attr_accessor :webhook_url, :response_handler

    def initialize(webhook_url, response_handler)
      @webhook_url = webhook_url
      @response_handler = response_handler
    end

    def payload
      { channel: "#general",
        username: "news.ycombinator-slack",
        text: "A new post from news.ycombinator.\n
        <#{response_handler.get_last_post_link}|#{response_handler.get_last_post_title}>" }
    end

    def send_payload
      system "curl -X POST --data-urlencode 'payload=#{payload}' #{webhook_url}"
    end
  end
end
