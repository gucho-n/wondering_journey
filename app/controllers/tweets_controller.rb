class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
    #  ここではurlにあるパラムスを取得することによって指定したカラムを手にすることができます
    @comments = @tweet.comments.includes(:user)
    # @tweetコメントをリンクさせます。
  end

  def new
    @tweet = Tweet.new
  end
  # form_withは遷移先でインスタンス変数を生成すべきなのか？

  def create
    @tweet = Tweet.create(tweet_params)
  end

  def tweet_params
    params.require(:tweet).permit(:name, :address, :image, :recommend, :cost).merge(user_id: current_user.id)
  end

  def nameSearch
    @tweets = Tweet.nameSearch(params[:keyword])
    render 'searches/search'
  end

  def addressSearch
    @tweets = Tweet.addressSearch(params[:keyword])
    render 'searches/search'
  end
end
