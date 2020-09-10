class AddShopToRides < ActiveRecord::Migration[6.0]
  def change
    add_reference :rides, :shop, foreign_key: true
  end
end
