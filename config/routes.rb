Rails.application.routes.draw do

root 'home#index'

get '/home/create_produto', to: 'home#createProduto'
get '/home/update_produto/:id', to: 'home#updateProduto'

resources :produtos, :movimentacaos

get '/produtos/comprar', to: 'produtos#comprar'

end
