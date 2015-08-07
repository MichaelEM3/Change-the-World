class CommentariesController < ApplicationController
  before_action :set_commentary, only: [:show, :edit, :update, :destroy]
  before_action :set_story, only: [:create]
  before_action :set_user, only: [:create]

  def new
    @commentary = Commentary.new
  end

  def show
  end

  def edit
  end

  def create
    @commentary = Commentary.new(commentary_params)
    if @commentary.save
      redirect_to :back
    else
      redirect_to :back, notice: "Please don't submit a blank comment."
    end
  end

  def update
    respond_to do |format|
      if @commentary.update(commentary_params)
        format.html { redirect_to @commentary, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @commentary.destroy
    respond_to do |format|
      format.html { redirect_to commtaries_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_commentary
    @commentary = Commentary.find(params[:id])
  end

  def set_user
    @user = User.find_by(id: current_user.id)
  end

  def set_story
    @story = Story.find(params[:story_id])
  end

  def commentary_params
    params.require(:commentary).permit(:story_id, :comment, :user_id)
  end
end
