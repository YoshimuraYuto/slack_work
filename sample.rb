require "slack-notify"
require 'clockwork'
require 'active_support/time'

sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
# sample.notify("Hello There!")
# sample.notify(text: 'test', channel: '#general')

# sample.notify(:)
# def second_job
#   p "method_print"
# end

include Clockwork
handler do |job|
  puts "method_print #{job}"
  # case job
  # when 'hoge.job'
  #     second_job
  # end
end

    every(5.seconds, 'hoge.job') do
    sample.notify("Hello There!")
  end
