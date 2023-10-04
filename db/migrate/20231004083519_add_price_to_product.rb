class AddPriceToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :price, :integer,
    :precision => 8, :scale => 2, :default => 0
  end

end
