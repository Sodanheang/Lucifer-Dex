class RemovePriceFromTokens < ActiveRecord::Migration[5.2]
  def change
    remove_column :tokens, :price
  end
end
