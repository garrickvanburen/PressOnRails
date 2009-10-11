class PostsController < ApplicationController
 
  def index
    
    if params[:q]
      q = params[:q]
      @posts = Post.find(:all, :conditions => ['post_title REGEXP ? OR post_content REGEXP ?', q, q])
      
    else
      posts_count = params[:format] ? options['posts_per_page'] : options['posts_per_rss']
      @posts = Post.find(:all, :conditions => ['post_date <= ? AND post_type = ?', Time.now, 'post'], :order => 'post_date DESC', :limit => posts_count)
    end
  
    respond_to do |format|
      format.html
      format.atom
      format.rss

      format.js
      format.json

      format.ics
      
      format.m

      format.m3u
    end
    
  end



  def show    
    @post = Post.find_by_post_name(params[:post_name]||params[:id])
    
    respond_to do |format|
      format.html

      format.js
      format.json

      format.ics
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
