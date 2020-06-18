class MovimentacaosController < ApplicationController
	def index
		@movimentacaos = Movimentacao.all
	end
end
