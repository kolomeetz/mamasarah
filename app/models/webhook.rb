class Webhook < ApplicationRecord
  def url
    "https://#{ENV['HOST']}/webhooks/#{id}/message"
  end
end
