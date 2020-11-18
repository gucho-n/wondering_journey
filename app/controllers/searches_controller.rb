class SearchesController < ApplicationController
 
  def index
  
  end

  def search
     @tweets = Tweet.name_Search(params[:namekeyword])
     render "searches/search"
  end



  # 詳細検索
  

end


