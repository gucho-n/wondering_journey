class CommentsController < ApplicationController
  before_action :resist
  # コントローラーを新たに作成した理由はコメントの保存が必要だから
  # コメントのインスタンスの生成は、tweetcontrollerでもいいのかな？

  def create
    redirect_to tweet_path(params[:tweet_id]) if @comments = Comment.create(comment_params)
  end

  def comment_params
    # 左側のパラメーターはform_withで入力した値。後のmergeは自分で入力する値。（ params[:tweet_id]は遷移した時にとるtweetidを選んでいる）
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end

  def resist
    redirect_to new_user_registration_path unless user_signed_in?
  end
end
