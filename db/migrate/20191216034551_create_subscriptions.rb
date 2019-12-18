class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :product_id
      t.timestamps
    end
    add_index :subscriptions, [:user_id, :product_id]
    add_index :subscriptions, :product_id
  end
end
