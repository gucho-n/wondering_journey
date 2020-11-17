class SearchesController < ApplicationController
 
  def index
  
  end

  def search
     @tweets = Tweet.search(params[:namekeyword])

     render "searches/search"
  end



  # 詳細検索
  

end


