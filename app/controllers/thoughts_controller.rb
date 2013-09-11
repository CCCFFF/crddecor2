class ThoughtsController < ApplicationController
  before_action :set_thought, only: [:show, :edit, :update, :destroy]

  # GET /thoughts
  # GET /thoughts.json
  def index
    @thoughts = Thought.all
  end

  # GET /thoughts/1
  # GET /thoughts/1.json
  def show
  end

  # GET /thoughts/new
  def new
    @thought = Thought.new
  end

  # GET /thoughts/1/edit
  def edit

    respond_to do |format|
      format.html
      format.js
    end
  end

  # POST /thoughts
  # POST /thoughts.json
  def create
    @thought = Thought.new(thought_params)
    @thought.user_id = current_user.id

    respond_to do |format|
      if @thought.save
        space_pic = SpacePicture.find_by(:id => @thought.space_picture_id)
        format.html { redirect_to space_url(space_pic.space_id), notice: 'Thought was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thought }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @thought.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thoughts/1
  # PATCH/PUT /thoughts/1.json
  def update
    respond_to do |format|
      if @thought.update(thought_params)
        format.html { redirect_to @thought, notice: 'Thought was successfully updated.' }
        format.json { head :no_content }
        format.js
      else
        format.html { render action: 'edit' }
        format.json { render json: @thought.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thoughts/1
  # DELETE /thoughts/1.json
  def destroy
    @thought.destroy
    respond_to do |format|
      format.html { redirect_to thoughts_url }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thought
      @thought = Thought.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thought_params
      params.require(:thought).permit(:text, :user_id, :space_picture_id)
    end
end
