class CommentsController < ApplicationController
  def new
  end

  def create
          @post = Micropost.find_by_id(params[:mp_id])
    @comment  = @post.comments.build(params[:comment])
    if @comment.save
      flash[:success] = "Comment created!"
      redirect_to root_path
    else
       @feed_items = []
      flash[:error] = "Failed"
      redirect_to root_path
    end
  end
end
