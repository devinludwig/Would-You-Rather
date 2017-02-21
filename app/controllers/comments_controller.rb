class CommentsController < ApplicationController
  def new
    @option = Option.find(params[:option_id])
    @comment = Comment.new
  end

  def edit
  end

  def create
    @option = Option.find(params[:option_id])
    @comment = @option.comments.new(content: comment_params[:content], user_id: current_user.id)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      redirect_to options_path
    end
  end

  def update
  end

  def destroy
    @option = Option.find(params[:option_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
