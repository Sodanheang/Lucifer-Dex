Rails.application.routes.draw do
  root 'home_page#index'

  post '/get-address-wallet', to: 'home_page#get_wallet_address', as: 'address'

  get 'wallet/index'
  get 'wallet/clear-wallet', to: 'wallet#clear_wallet', as: 'clear'
  get 'wallet/add-token', to: 'wallet#add_token', as: 'add_token'
  get 'wallet/remove-token', to: 'wallet#remove_token', as: 'remove_token'
end
