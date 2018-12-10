class CreatePurchaseItems < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_items do |t|
      t.integer   :purchase_history_id
      t.integer   :purchase_cd_price
      t.integer   :purchase_cd_quantity
      t.integer   :cd_id
      t.string    :purchase_cd_title
      t.string    :purchase_cd_image_id
      t.timestamps
    end
  end
end
