class AddDataToCarts < ActiveRecord::Migration[7.0]
  def change
    add_reference :carts, :user, null: false, foreign_key: true
    add_column :carts, :products, :string
  end
end
