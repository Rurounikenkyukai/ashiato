class CreateDiscs < ActiveRecord::Migration[5.2]
  def change
    create_table :discs do |t|
    	t.integer   :disc_number
    	t.integer   :cd_id
      t.timestamps
    end
  end
end
