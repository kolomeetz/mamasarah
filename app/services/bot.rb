require 'telegram/bot'

class Bot
  def initialize
    @token = ENV['TELEGRAM_BOT_TOKEN']
    @client = Telegram::Bot::Client.new(@token)
  end

  def register_webhook(webhook)
    @client.api.set_webhook(url: webhook.url)
  end
end
