class WalletController < ApplicationController
  before_action :set_wallet, only: [:index, :add_token, :remove_token]

  def index
    @wallet_response = get_wallet_info(@wallet.address)
    @wallet_bnb_balance = (@wallet_response["result"].to_f / BASE_DECIMAL).round(2)

    @bnb_token = Token.find_by(symbol: "BNB")
    @bnb_price = get_token_price(@bnb_token.address)["data"]["price"].to_f.round(2)
    @bnb_total_balance = (@wallet_bnb_balance * @bnb_price).round(2)
    @net_worth = @bnb_total_balance

    @all_token_in_wallet = WalletToken.where(wallet_id: @wallet.id).includes(:token)
    @wallet_tokens = Hash.new
    @all_token_in_wallet.each do |wallet_token|
      token_address = wallet_token.token.address
      divisor = wallet_token.token.divisor.present? ? wallet_token.token.divisor.to_i : BASE_DECIMAL
      price = get_token_price(token_address)["data"]["price"].to_f.round(2)

      balance = get_wallet_token_balance(@wallet.address, token_address, divisor)
      total = (price * balance).round(2)
      @net_worth = @net_worth + total
      @wallet_tokens[wallet_token.token.id] = {"balance": balance, "price": price, "total": total}
    end
  end

  def clear_wallet
    clear_wallet_id_sess
    redirect_to root_url
  end

  def add_token
    WalletToken.where(wallet_id: @wallet.id, token_id: params[:token_id]).first_or_create
    redirect_to wallet_index_url
  end

  def remove_token
    wallet_token = WalletToken.where(wallet_id: @wallet.id, token_id: params[:token_id]).first
    if wallet_token.present?
      wallet_token.destroy
    end
    redirect_to wallet_index_url
  end

  private
    def set_wallet
      if !has_wallet?
        redirect_to root_url(error: "Please add your wallet address first!")
      end
      @wallet = Wallet.find(session[:wallet_address_id])
    end
end