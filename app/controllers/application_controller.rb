class ApplicationController < ActionController::Base
  BSC_KEY = "TM64VI8C67M9RFF22FINT54FTZ3MJD3XS6"
  BASE_DECIMAL = 1000000000000000000

  def get_wallet_info(address)
    url = "https://api.bscscan.com/api?module=account&action=balance&address=#{address}&apikey=#{BSC_KEY}"
    response = RestClient.get(url)
    JSON.parse(response.body)
  end

  def get_token_price(address)
    url = "https://api.pancakeswap.info/api/v2/tokens/#{address}"
    response = RestClient.get(url)
    JSON.parse(response.body)
  end

  def get_wallet_token_balance(wallet_address, token_address, divisor)
    url = "https://api.bscscan.com/api?module=account&action=tokenbalance&contractaddress=#{token_address}&address=#{wallet_address}&tag=latest&apikey=#{BSC_KEY}"
    (JSON.parse(RestClient.get(url).body)["result"].to_f / divisor).round(2)
  end

  def has_wallet?
    session[:wallet_address_id].present?
  end

  def set_wallet_id_sess(wallet_id)
    session[:wallet_address_id] = wallet_id
  end

  def clear_wallet_id_sess
    session[:wallet_address_id] = nil
  end

end
