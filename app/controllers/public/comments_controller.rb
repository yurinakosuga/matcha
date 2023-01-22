class Public::CommentsController < ApplicationController
  
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_back(fallback_location: root_path)  #コメント送信後は、一つ前のページへリダイレクトさせる。
    else
      redirect_back(fallback_location: root_path)  #同上
    end
  end
   
   def destroy
    comment = Comment.find(params[:id])
    diary = comment.diary
    comment.destroy
    redirect_to diary_path(diary)
    
   end
  
  def comment_params
    params.require(:comment).permit(:comment_content, :diary_id, :user_id)
  end
end
