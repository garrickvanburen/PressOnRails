class PostsController < ApplicationController
 
  def index
    
    posts_count = params[:format] ? options['posts_per_page'] : options['posts_per_rss']
    @posts = Post.find(:all, :conditions => ['post_date <= ? AND post_type = ?', Time.now, 'post'], :limit => posts_count)
    
    respond_to do |format|
      format.html
      format.atom
      format.rss

      format.js
      format.json

      format.ics
      format.kml
    end
    
  end



  def show
    
    @post = Post.find_by_post_name(params[:post_name])
    
    respond_to do |format|
      format.html

      format.js
      format.json

      format.ics
      format.kml
    end
    
  end



  def new
    @post = Post.new
    
    respond_to do |format|
      format.html
      format.atom
      format.js
      format.json
      format.xml
    end
  end


  def edit
    @post = Post.find_by_post_name(params[:id])
  end


  def update
    
    respond_to do |format|
      format.html
      format.atom
      format.js
      format.json
      format.xml
    end
  end

  def destroy
    
    respond_to do |format|
      format.html
      format.atom
      format.js
      format.json
      format.xml
    end
  end

  def create

    respond_to do |format|
      format.html
      format.atom
      format.js
      format.json
      format.xml
    end
  end

end
