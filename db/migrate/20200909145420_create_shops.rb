class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :address
      t.string :shop_manager
      t.text :description

      t.timestamps
    end
  end
end
