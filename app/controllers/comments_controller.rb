class CommentsController < ApplicationController
  
  # コントローラーを新たに作成した理由はコメントの保存が必要だから
  # コメントのインスタンスの生成は、tweetcontrollerでもいいのかな？


  def create 
    if @comment = Comment.create(comment_params)
      @text = @comment
     redirect_to root_path
  end
end
  
  def comment_params
    # 左側のパラメーターはform_withで入力した値。後のmergeは自分で入力する値。（ params[:tweet_id]は遷移した時にとるtweetidを選んでいる）
    params.require(:comment).permit(:text).merge(user_id: current_user.id,tweet_id: params[:tweet_id])
  end
end
