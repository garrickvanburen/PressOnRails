class PagesController < ApplicationController
  
  def index
  end

  def show
    @page = Post.find_by_post_name(params[:post_name]||params[:id])
    
    respond_to do |format|
      format.html

      format.js
      format.json

      format.ics
    end
  end

  def new
  end

  def update
  end

  def destroy
  end

  def create
  end

end
