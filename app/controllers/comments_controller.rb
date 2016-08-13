class CommentsController < ApplicationController
    before_action :authenticate_user!
    # GET /artist/comment
    def new 
        @comment = Comment.new 
    end
    
    # POST /artist/comment
    def create
        @comment = Artist.find_by_id(params[:artist_id]).comments.new comment_params
        if @comment.save
            redirect_to :back, notice: 'Comment posted'
        end
    end
    
    # DELETE /artist/comment
    
    def destroy
        @comment = Comment.find(params[:id])
        if @comment.user_id = current_user
            @comment.destroy
            redirect_to :back, notice: 'Comment deleted'
        end
    end
    
    private

    def comment_params
      params.require(:comment).permit(:body)
    end
end
