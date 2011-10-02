class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @comment = Comment.new
    end
    @feed_items = Micropost.where(user_id = "").paginate(:page => params[:page])
  end
end
