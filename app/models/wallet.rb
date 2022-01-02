class Wallet < ApplicationRecord
  has_many :wallet_tokens, dependent: :destroy
  has_many :tokens, through: :wallet_tokens, dependent: :nullify
end