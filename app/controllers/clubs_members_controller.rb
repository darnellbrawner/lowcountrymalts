class ClubsMembersController < ApplicationController
  before_action :set_clubs_member, only: [:show, :edit, :update, :destroy]

  # GET /clubs_members
  # GET /clubs_members.json
  def index
    @clubs_members = ClubsMember.all
  end

  # GET /clubs_members/1
  # GET /clubs_members/1.json
  def show
  end

  # GET /clubs_members/new
  def new
    @clubs_member = ClubsMember.new
  end

  # GET /clubs_members/1/edit
  def edit
  end

  # POST /clubs_members
  # POST /clubs_members.json
  def create
    @clubs_member = ClubsMember.new(clubs_member_params)

    respond_to do |format|
      if @clubs_member.save
        format.html { redirect_to @clubs_member, notice: 'Clubs member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @clubs_member }
      else
        format.html { render action: 'new' }
        format.json { render json: @clubs_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubs_members/1
  # PATCH/PUT /clubs_members/1.json
  def update
    respond_to do |format|
      if @clubs_member.update(clubs_member_params)
        format.html { redirect_to @clubs_member, notice: 'Clubs member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clubs_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubs_members/1
  # DELETE /clubs_members/1.json
  def destroy
    @clubs_member.destroy
    respond_to do |format|
      format.html { redirect_to clubs_members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clubs_member
      @clubs_member = ClubsMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clubs_member_params
      params.require(:clubs_member).permit(:club_id, :member_id)
    end
end
