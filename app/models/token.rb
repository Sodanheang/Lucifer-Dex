class Token < ApplicationRecord
  has_many :wallet_tokens, dependent: :destroy
end