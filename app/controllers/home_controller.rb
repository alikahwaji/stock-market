class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = "Please enter a valid symbol!"
      elsif 
        if params[:id]
          begin
               @stock = StockQuote::Stock.quote(params[:id])
          rescue StandardError
            @error = "Stock Symbol Doesn't Exist...Please enter a valid symbol!"
          end
        end
  end
end

  
  def about 
  end
  
end
