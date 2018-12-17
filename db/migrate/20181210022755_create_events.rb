class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
       t.date   :event_day
       t.string   :event_title
       t.string   :event_image_id
       t.string   :event_prefectures
       t.string   :event_city
       t.string   :event_address, default: "東京都"
      t.timestamps
    end
  end

  def up
    t.string   :event_prefectures, default: "東京都"
    t.string   :event_address
  end

  def down
    t.string   :event_prefectures
    t.string   :event_address, default: "東京都"
  end
end