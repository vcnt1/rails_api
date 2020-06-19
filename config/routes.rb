Rails.application.routes.draw do

root 'home#index'

resources :produtos, :movimentacaos

get '/home/create_produto', to: 'home#createProduto'
get '/home/update_produto/:id', to: 'home#updateProduto'
get '/home/user_add_saldo', to: 'home#userAddSaldo'
post '/home/user_add_saldo', to: 'home#userAddSaldoPost'

get '/produtos/comprar/:id', to: 'produtos#comprar'

end
