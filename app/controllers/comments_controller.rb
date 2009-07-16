class CommentsController < ApplicationController
  has_raskimet
  
  def index
    @comments = params[:post_id] ? Comment.find(:all, :conditions => {:comment_post_ID => Post.find_by_post_name(params[:post_id], :select => :id).id}) : Comment.find(:all)
  end

  def show

  end

  def new

  end

end
