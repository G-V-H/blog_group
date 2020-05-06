class BlogsController < ApplicationController
  
  before_action :set_blog, only: [:show]
  before_action :set_user_blog, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
