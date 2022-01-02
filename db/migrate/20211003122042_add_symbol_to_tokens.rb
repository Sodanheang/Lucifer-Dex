class AddSymbolToTokens < ActiveRecord::Migration[5.2]
  def change
    add_column :tokens, :symbol, :string
  end
end
