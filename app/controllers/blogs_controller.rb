class BlogsController < ApplicationController
  
  before_action :set_blog, only: [:show]
  before_action :set_user_blog, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @blog = Blog.new
  end
  
  def create
    @blog = Blog.new(blog_params)
    if @blog.save
     flash[:notice] = "Blog post was successfully created"
     redirect_to blog_path(@blog)
    else
     render 'new'
    end
  end
  
  def show
  
  end
  
  def update
    if @blog.update(blog_params)
     flash[:notice] = "Blog was updated"
     redirect_to blog_path(@blog)
    else
     flash[:notice] = "Blog was not updated"
     render 'edit'
    end
  end
  
  def edit
  
  end
  
  def index
    @blog = Blog.all
  end
  
  def destroy
    @blog.destroy
    flash[:notice] = "Blog post was deleted"
    redirect_to blogs_path
  end
  
  
  private
    
  def blog_params
     params.require(:blog).permit(:title, :description)
    end
  
    def set_blog
     @blog = Blog.find(params[:id])
    end
  
end
