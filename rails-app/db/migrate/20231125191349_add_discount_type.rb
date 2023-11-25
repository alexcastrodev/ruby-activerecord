class AddDiscountType < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :discount_type, :integer, default: 0, null: false
  end
end
