class CreateCds < ActiveRecord::Migration[5.2]
  def change
    create_table :cds do |t|
       t.string   :cd_title
       t.string   :cd_image_id
       t.string   :cd_genre
       t.integer   :cd_price
       t.integer   :cd_stock
       t.string   :cd_label
      t.timestamps
    end
  end
end
