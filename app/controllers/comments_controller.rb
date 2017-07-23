class CommentsController < ApplicationController

  def create
  	@image = Image.find(params[:image_id])
    @comment = @image.comments.build(comment_params)
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @image, notice: 'Comment was successfully added.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { redirect_to @image, notice: 'There was some error.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

	def destroy

	end

	private
    def comment_params
      params.require(:comment).permit(:message, :parent_id, :image_id)
    end
end
