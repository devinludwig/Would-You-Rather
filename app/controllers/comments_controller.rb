class CommentsController < ApplicationController
  def new
    @option = Option.find(params[:option_id])
    @comment = Comment.new
  end

  def edit
  end

  def create
    @option = Option.find(params[:option_id])
    @comment = @option.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to options_path }
        format.js
      end
    else
      render :back
    end
  end

  def update
  end

  def destroy

  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
