class CreateAsiatos < ActiveRecord::Migration[5.2]
  def change
    create_table :asiatos do |t|
       t.integer   :user_id
       t.integer   :event_id
      t.timestamps
    end
  end
end
