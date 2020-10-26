class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  
    @comment = Comment.new
  end

  def show
   @tweet = Tweet.find(params[:id])
  #  ここではurlにあるパラムスを取得することによって指定したカラムを手にすることができます
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
  
  def search
    @tweets = Tweet.search(params[:keyword])
    render "searches/search"
  end


  

end
