class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.string :title
      t.text :content
      t.string :location

      t.timestamps
    end
  end
end
