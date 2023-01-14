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
    @comment = Comment.new(comment_params)
    @comment.save
    if @comment.save
      redirect_to comments_path
    else
      render new
    end
    
  end
  
  def comment_params
    params.require(:comment).permit(:body)
  end
end
