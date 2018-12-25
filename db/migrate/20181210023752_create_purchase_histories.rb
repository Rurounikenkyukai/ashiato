class CreatePurchaseHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_histories do |t|
       t.integer   :user_id
       t.string    :send_address
       t.string    :send_name
       t.string    :send_postal_code
       t.string    :send_status
       t.date    :purchase_at
      t.timestamps
    end
  end
end
