class CategoriesController < ApplicationController
  
  def index
  
  end

  def show
    @category = Category.find_by_name(params[:id])
    @posts = @category.posts.reverse
    logger.info(@posts)
    render :template => 'posts/index' 
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
