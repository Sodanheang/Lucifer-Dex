class AddDivisorToTokens < ActiveRecord::Migration[5.2]
  def change
    add_column :tokens, :divisor, :string
  end
end
