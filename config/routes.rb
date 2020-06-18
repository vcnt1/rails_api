Rails.application.routes.draw do

root 'home#index'

resources :produtos, :movimentacaos

get '/home/create_produto', to: 'home#createProduto'
get '/home/update_produto/:id', to: 'home#updateProduto'

get '/produtos/comprar/:id', to: 'produtos#comprar'

end
