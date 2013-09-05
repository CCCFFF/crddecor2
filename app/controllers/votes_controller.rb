class VotesController < ApplicationController
 before_action :find_vote, :only => [:show, :edit, :update, :destroy]
  before_action :current_user_must_own_vote, :only => [:edit, :update, :destroy]


def find_vote
  @vote = Vote.find_by(params[:id])
end

def current_user_must_own_vote
  if @vote.user != current_user
    redirect_to homes_url, :notice => "Not authorized for that."
  end
  end
  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
  end

  # GET /votes/new
  def new
    @vote = Vote.new
    if current_user.blank?
      redirect_to homes_url, :notice => "Please sign in to vote."
    end
  end

  # GET /votes/1/edit
  def edit
  end

  # POST /votes
  # POST /votes.json
  def create
    @vote = Vote.new
    @vote.user_id = current_user.id
    @vote.home_id = params[:home_id]

    respond_to do |format|
      if @vote.save
        format.html { redirect_to @vote, notice: 'Vote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vote }
      else
        format.html { render action: 'new' }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    @vote.user_id = params[:user_id]
    @vote.home_id = params[:home_id]

    respond_to do |format|
      if @vote.save
        format.html { redirect_to @vote, notice: 'Vote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to homes_url }
      format.json { head :no_content }
    end
  end
end
