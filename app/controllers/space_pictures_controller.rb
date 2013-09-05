class SpacePicturesController < ApplicationController
  before_action :set_space_picture, only: [:show, :edit, :update, :destroy]

  # GET /space_pictures
  # GET /space_pictures.json
  def index
    @space_pictures = SpacePicture.all
  end

  # GET /space_pictures/1
  # GET /space_pictures/1.json
  def show
  end

  # GET /space_pictures/new
  def new
    @space_picture = SpacePicture.new
  end

  # GET /space_pictures/1/edit
  def edit
  end

  # POST /space_pictures
  # POST /space_pictures.json
  def create
    @space_picture = SpacePicture.new(space_picture_params)

    respond_to do |format|
      if @space_picture.save
        format.html { redirect_to @space_picture, notice: 'Space picture was successfully created.' }
        format.json { render action: 'show', status: :created, location: @space_picture }
      else
        format.html { render action: 'new' }
        format.json { render json: @space_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /space_pictures/1
  # PATCH/PUT /space_pictures/1.json
  def update
    respond_to do |format|
      if @space_picture.update(space_picture_params)
        format.html { redirect_to @space_picture, notice: 'Space picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @space_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /space_pictures/1
  # DELETE /space_pictures/1.json
  def destroy
    @space_picture.destroy
    respond_to do |format|
      format.html { redirect_to space_pictures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_space_picture
      @space_picture = SpacePicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def space_picture_params
      params.require(:space_picture).permit(:name, :image, :space_id)
    end
end
