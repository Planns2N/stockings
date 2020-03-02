class HomeController < ApplicationController
  def index
  @api = StockQuote::Stock.new(api_key: 'pk_da146aee136e488881dbcc97058ee967')

    if params[:ticker] == ""
      @nothing = "Hey! You Forgot To Enter A Symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if  !@stock
      @error = "Hey! That Stock Symbol Doesn't Exist. Please Try Again."
      end

    end

  end

  def about
  end

end