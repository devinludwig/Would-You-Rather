class OptionsController < ApplicationController
  def new
    @option = Option.new
  end

  def create
    @option = Option.new(option_params)
    if @option.save
      respond_to do |format|
        format.html { redirect_to options_path }
        format.js
      end
    else
      render :new
    end
  end

  def index
    @options = Option.all
  end

  def show
    @option = Option.find(params[:id])
  end

  def edit
  end

  def update
    @option = Option.find(params[:id])
    if params[:vote] == "one"
      if @option.update(votes_one: @option.votes_one + 1)
        respond_to do |format|
          format.html { redirect_to options_path }
          format.js
        end
      end
    elsif params[:vote] == "two"
      @option.update(votes_two: @option.votes_two + 1)
      respond_to do |format|
        format.html { redirect_to options_path }
        format.js
      end
    else
      if @option.update(option_params)
        redirect_to options_path
      else
        render :edit
      end
    end
  end

  def destroy
    @option = Option.find(params[:id])
    @option.destroy
    redirect_to :index
  end

  private

  def option_params
    params.require(:option).permit(:answer_two, :answer_one)
  end
end
