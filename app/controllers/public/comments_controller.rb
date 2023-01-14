class Public::CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end
  
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_back(fallback_location: root_path)  #コメント送信後は、一つ前のページへリダイレクトさせる。
    else
      redirect_back(fallback_location: root_path)  #同上
    end
  end
   
  
  def comment_params
    params.require(:comment).permit(:comment_content, :post_id, :user_id)
  end
end
