class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :chat_id
      t.string :first_name
      t.string :last_name
      t.string :username

      t.timestamps
    end
  end
end
