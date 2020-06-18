class HomeController < ApplicationController
	def index
		@produtos = Produto.all
	end

	def createProduto
		
	end

	def updateProduto
		@produto = Produto.find(params[:id])
	end
end
