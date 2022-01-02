class HomePageController < ApplicationController
  def index
    if has_wallet?
      redirect_to wallet_index_url
    end
  end

  def get_wallet_address
    if params[:address].present?
      address = params[:address]
      body = get_wallet_info(address)
      if(body["status"] == "1")
        created_address = Wallet.create(address: address)
        set_wallet_id_sess(created_address.id)
        redirect_to wallet_index_url
      else
        params[:error] = body["result"]
        render :index
      end
    else
      render :index
    end
  end

end