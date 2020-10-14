class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    
  end

  def show
   
  end

  def new
   @tweet = Tweet.new
  end

  def create
  @tweet = Tweet.create(tweet_params)
  end
  def tweet_params
    params.require(:tweet).permit(:name, :address, :image, :recommend, :cost)
  end
end
