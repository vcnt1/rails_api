Rails.application.routes.draw do

root 'home#index'

get '/home/create_produto', to: 'home#createProduto'

resources :produtos, :movimentacaos

end
