class ShoppingCartSetup < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :account_id
      t.decimal :total_price, :precision => 8, :scale => 2

      t.timestamps
    end

    create_table :accounts do |t|
      t.integer :user_id

      t.timestamps
    end

    create_table :order_items do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :quantity

      t.timestamps
    end

    add_column :users, :account_id, :integer
    
  end
end
