class BlogsController < ApplicationController
  
  before_action :set_blog, only: [:show]
  before_action :set_user_blog, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  

  def index
    @blog = Blog.all.order(created_at: :desc)
  end

  def new
    @blog = Blog.new
  end
  
  def create

    @blog = current_user.blogs.create(blog_params)
    
    if @blog.errors.any?
      render "new"
    else
      redirect_to blogs_path
    end
  end
  
  def show
    @notes = Note.all
  end
  
  def update
    @blog = Blog.update(params[:id], blog_params)
    
    if @blog.update(blog_params)
     flash[:notice] = "Blog was updated"
     redirect_to blogs_path
    else
     flash[:notice] = "Blog was not updated"
     render 'edit'
    end
  end
  
  def edit
  
  end

  def destroy
    Blog.find_by_id(params[:id]).destroy
    flash[:notice] = "Blog post was deleted"
    redirect_to blogs_path
  end
  
  
  private
    
  def blog_params
     params.require(:blog).permit(:title, :description, :picture)
    end
  
  def set_blog
     @blog = Blog.find(params[:id])
  end

  def set_user_blog
    @blog = current_user.blogs.find_by_id(params[:id])
    if @blog == nil
      redirect_to blogs_path
    end
  end
  
end
