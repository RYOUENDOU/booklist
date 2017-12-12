class CommentsController < ApplicationController
    def create
		@booklist = Booklist.find(params[:booklist_id])
		@comment = Comment.new(comment_params)
		@comment.booklist_id = @booklist.id
		@comment.save
		redirect_to booklist_path(@booklist)
	end


	def destroy
		@booklist = Booklist.find(params[:booklist_id])
		@comment = @booklist.comments.find_by(params[:id])
		@comment.destroy
		redirect_to booklist_path(@booklist.id)
		
	end

	private
	def comment_params
	params.require(:comment).permit(:nickname, :body, :booklist_id)

	end

end