class ChangeColumnToPurchaseHistory < ActiveRecord::Migration[5.2]
 # 変更内容
  def up
    change_column :purchase_histories, :send_status, :string, null: false, default: "受注"
  end

  # 変更前の状態
  def down
    change_column :purchase_histories, :send_status, :string
  end
end
