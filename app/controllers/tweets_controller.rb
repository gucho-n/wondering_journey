class TweetsController < ApplicationController
  def index
    
  end
  def new
    
  end

  def create
    @user = Tweet.new(stpara)
    @user.save
  end
  def stpara 
    params.require(:tweet)
  end
end
