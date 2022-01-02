class WalletToken < ApplicationRecord
  belongs_to :wallet
  belongs_to :token
end
