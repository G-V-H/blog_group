class NotesController < ApplicationController

    def create
        # @blog = Blog.find(params[:blog_id])
        # @note = @blog.notes.create(params[:note].permit(:text_field))

        @note = Note.create(user_id: current_user.id, blog_id: @blog.id, text_field: :text)
        #add blog_id and user_id to create
    end

    # def destroy
    #   @blog = Blog.find(params[:blog_id])
    #   @blog = @blog.notes.find(params[:id])
    #   @note.destroy
    #   redirect_to blog_path(@blog)
    # end
    
end