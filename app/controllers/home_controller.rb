class HomeController < ApplicationController
  def index
    @stock = StockQuote::Stock.quote("goog")
  end
  
  def about 
  end
  
end
