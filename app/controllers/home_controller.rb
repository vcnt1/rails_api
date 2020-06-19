class HomeController < ApplicationController
	def index
		if User.exists?(1) 
			@user = User.find(1)
		end

		@produtos = Produto.all
	end

	def createProduto
		
	end

	def updateProduto
		@produto = Produto.find(params[:id])
	end

	def userAddSaldo

	end

	def userAddSaldoPost

		if params[:valor] != nil
			if User.exists?(1)
				@user = User.find(1)
				@user.update_column(:saldo, @user.saldo + params[:valor].to_f)
			else
				@user = User.create(saldo: params[:valor].to_f)
			end

			redirect_to '/home/user_add_saldo'
		else 
			user = User.create(saldo: 100)
			redirect_to '/home/user_add_saldo'
		end
	end

end
