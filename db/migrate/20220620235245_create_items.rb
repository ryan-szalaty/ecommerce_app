class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :price
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
