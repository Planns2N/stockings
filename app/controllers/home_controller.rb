class HomeController < ApplicationController
  	def index
  			@api = StockQuote::Stock.new(api_key: 'pk_da146aee136e488881dbcc97058ee967')

  		 if params[:ticker] == ""
  		 	@nothing = "Hey! You forgot to enter a symbol"
  		 elsif params[:ticker]
  		 	@stock = StockQuote::Stock.quote(params[:ticker])
  		 	  if @stock == ""
  		 		@error = "Hey! That stock symbol doesn't exist. Please enter a symbol"
  		 	end

  		 end
	end


	def about
	end

end
