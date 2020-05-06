class BlogsController < ApplicationController
  
  before_action :set_blog, only: [:show]
  before_action :set_user_blog, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  
  def index
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to blogs_show(@blog)
  end

  def edit
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    flash[:notice] = "Blog post was deleted"
    redirect_to blogs_path
  end

  private
  def blog_params
   params.require(:blog).permit(:title, :description)
  end

end
