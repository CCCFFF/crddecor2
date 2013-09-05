class SpaceVotesController < ApplicationController
  before_action :find_vote, :only => [:show, :edit, :update, :destroy]
  before_action :current_user_must_own_vote, :only => [:edit, :update, :destroy]

  # GET /space_votes
  # GET /space_votes.json
  def index
    @space_votes = SpaceVote.all
  end

def current_user_must_own_vote
  if @space_vote.user != current_user
    redirect_to spaces_url, :notice => "Not authorized for that."
  end
  end
  # GET /space_votes/1
  # GET /space_votes/1.json
  def show
  end

  # GET /space_votes/new
  def new
    @space_vote = SpaceVote.new
  end

  # GET /space_votes/1/edit
  def edit
  end

  # POST /space_votes
  # POST /space_votes.json
  def create
    @space_vote = SpaceVote.new
    @space_vote.user_id = current_user.id
    @space_vote.space_id = params[:space_id]
    respond_to do |format|
      if @space_vote.save
        format.html { redirect_to spaces_url, notice: 'Vote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @space_vote }
      else
        format.html { render action: 'new' }
        format.json { render json: @space_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /space_votes/1
  # PATCH/PUT /space_votes/1.json
  def update
    @space_vote.user_id = params[:user_id]
    @space_vote.space_id = params[:space_id]
    respond_to do |format|
      if @space_vote.update(space_vote_params)
        format.html { redirect_to spaces_url, notice: 'Vote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @space_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /space_votes/1
  # DELETE /space_votes/1.json
  def destroy
    @space_vote.destroy
    respond_to do |format|
      format.html { redirect_to space_votes_url }
      format.json { head :no_content }
    end
  end


end
