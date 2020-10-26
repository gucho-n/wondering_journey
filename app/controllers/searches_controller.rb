class SearchesController < ApplicationController
  def index
    
  end
  def detailSearch
    @tweets = Tweet.search(params[:keyword])
    render "searches/search"
  end
end
