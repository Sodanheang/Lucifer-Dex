class AddInfoToTokens < ActiveRecord::Migration[5.2]
  def change
    add_column :tokens, :info, :string
  end
end
