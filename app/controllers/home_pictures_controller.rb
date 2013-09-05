class HomePicturesController < ApplicationController
  before_action :set_home_picture, only: [:show, :edit, :update, :destroy]

  # GET /home_pictures
  # GET /home_pictures.json
  def index
    @home_pictures = HomePicture.all
  end

  # GET /home_pictures/1
  # GET /home_pictures/1.json
  def show
  end

  # GET /home_pictures/new
  def new
    @home_picture = HomePicture.new
  end

  # GET /home_pictures/1/edit
  def edit
  end

  # POST /home_pictures
  # POST /home_pictures.json
  def create
    @home_picture = HomePicture.new(home_picture_params)

    respond_to do |format|
      if @home_picture.save
        format.html { redirect_to @home_picture, notice: 'Home picture was successfully created.' }
        format.json { render action: 'show', status: :created, location: @home_picture }
      else
        format.html { render action: 'new' }
        format.json { render json: @home_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_pictures/1
  # PATCH/PUT /home_pictures/1.json
  def update
    respond_to do |format|
      if @home_picture.update(home_picture_params)
        format.html { redirect_to @home_picture, notice: 'Home picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @home_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_pictures/1
  # DELETE /home_pictures/1.json
  def destroy
    @home_picture.destroy
    respond_to do |format|
      format.html { redirect_to home_pictures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_picture
      @home_picture = HomePicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_picture_params
      params.require(:home_picture).permit(:name, :home_id, :image)
    end
end
