class CommentsController < ApplicationController
	before_action :authenticate_user!

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
    @comment = Comment.find(params[:id])
    @image = @comment.image
    @comment.destroy if @comment.user == current_user
    respond_to do |format|
      format.html { redirect_to @image, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
	end

	private
    def comment_params
      params.require(:comment).permit(:message, :parent_id, :image_id)
    end
end
