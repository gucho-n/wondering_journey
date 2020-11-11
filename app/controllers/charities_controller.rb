class CharitiesController < ApplicationController
  def index
   @tweets = Tweet.all
  end
  def show
    @tweet = Tweet.find(params[:id])
    @charity = Charity.new
  end
  def create
    
  end
end
