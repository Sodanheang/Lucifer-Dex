class CreateWalletTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :wallet_tokens do |t|
      t.references :wallet, foreign_key: true
      t.references :token, foreign_key: true

      t.timestamps
    end
  end
end
