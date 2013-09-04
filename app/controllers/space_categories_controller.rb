class SpaceCategoriesController < ApplicationController
  before_action :set_space_category, only: [:show, :edit, :update, :destroy]

  # GET /space_categories
  # GET /space_categories.json
  def index
    @space_categories = SpaceCategory.all
  end

  # GET /space_categories/1
  # GET /space_categories/1.json
  def show
  end

  # GET /space_categories/new
  def new
    @space_category = SpaceCategory.new
  end

  # GET /space_categories/1/edit
  def edit
  end

  # POST /space_categories
  # POST /space_categories.json
  def create
    @space_category = SpaceCategory.new(space_category_params)

    respond_to do |format|
      if @space_category.save
        format.html { redirect_to @space_category, notice: 'Space category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @space_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @space_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /space_categories/1
  # PATCH/PUT /space_categories/1.json
  def update
    respond_to do |format|
      if @space_category.update(space_category_params)
        format.html { redirect_to @space_category, notice: 'Space category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @space_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /space_categories/1
  # DELETE /space_categories/1.json
  def destroy
    @space_category.destroy
    respond_to do |format|
      format.html { redirect_to space_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_space_category
      @space_category = SpaceCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def space_category_params
      params.require(:space_category).permit(:name)
    end
end
