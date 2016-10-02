class CreateWebhooks < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'uuid-ossp'

    create_table :webhooks, id: :uuid do |t|
      t.timestamps
    end
  end
end
