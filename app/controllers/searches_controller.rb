class SearchesController < ApplicationController
  def index
    @tweets = Tweet.search(params[:keyword])
  end
  def search
    
  end
end
