class ProdutosController < ApplicationController
	protect_from_forgery prepend: true

	def index
		@produtos = Produto.all
	end

	def show

	end

	def create
		@produto = Produto.new(produto_params)

		if @produto.save
			@movimentacao = Movimentacao.create(data: Date.today, tipo: 'Criação', descricao: 'Produto criado', valor: @produto.preco, produto_id: @produto.id) 
			redirect_to '/produtos'
		end
	end

	def update
		@produto = Produto.find(params[:id])

		if @produto.update(produto_params)
			@movimentacao = Movimentacao.create(data: Date.today, tipo: 'Edição', descricao: 'Produto editado', valor: @produto.preco, produto_id: @produto.id) 
			redirect_to '/produtos'
		end
	end

	def comprar
		@produto = Produto.find(params[:id])

		if @produto.quantidade - 1 > 0 
			@movimentacao = Movimentacao.create(data: Date.today, tipo: 'Compra', descricao: 'Produto comprado, quantidade restante: '+ (@produto.quantidade-1).to_s, valor: @produto.preco, produto_id: @produto.id) 
			@produto.update_column(:quantidade, @produto.quantidade - 1)
		else 
			@movimentacao = Movimentacao.create(data: Date.today, tipo: 'Compra', descricao: 'Ultimo produto comprado', valor: @produto.preco, produto_id: @produto.id) 
			@produto.destroy
		end

		redirect_to '/'
	end


	private
	def produto_params
	  params.permit(:nome, :descricao, :preco, :quantidade)
	end

	
end
