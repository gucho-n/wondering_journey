class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @user = current_user
    @comment = Comment.new
    @text = Comment.all
  end

  def show
   
  end

  def new
   @tweet = Tweet.new
  end
  #form_withは遷移先でインスタンス変数を生成すべきなのか？

  def create
   @tweet = Tweet.create(tweet_params)
  end
  
  def tweet_params
    params.require(:tweet).permit(:name, :address, :image, :recommend, :cost).merge(user_id: current_user.id)
  end
end
