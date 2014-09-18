# YcombSlack

Gem to post the latest news.ycombinator post to slack!

YcombSlack is pretty dumb at moment, but it is getting more intelligent.. slowly

## Installation

Add this line to your application's Gemfile:

    gem 'ycomb_slack'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ycomb_slack

## Usage

Create a ycombinator handler

    ycombinator_handler = YcombSlack::YcombinatorHandler.new
   
Create a slack handler

    slack_handler = YcombSlack::SlackHandler.new <incoming_slack_webhook>, ycombinator_handler
    
Post to slack chanel

    slack_handler.send_payload
    

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ycomb_slack/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
