class NotesController < ApplicationController

    def create
        
        Note.create(user_id: current_user.id, blog_id: params[:blog_id], text_field: params[:text_field])
        redirect_to blogs_path
        
    end

    # def destroy
    #   @blog = Blog.find(params[:blog_id])
    #   @blog = @blog.notes.find(params[:id])
    #   @note.destroy
    #   redirect_to blog_path(@blog)
    # end
    
end