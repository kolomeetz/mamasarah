class WebhooksController < ApplicationController
  def index
    @webhooks = Webhook.all
  end

  def create
    Webhook.first&.destroy
    @webhook = Webhook.create

    bot = Bot.new
    bot.register_webhook @webhook

    redirect_to webhooks_path
  end
end
