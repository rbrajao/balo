class DivisionUsersController < ApplicationController
  before_action :set_division_user, only: %i[ show edit update destroy ]
  before_action :set_user, only: %i[ show edit update new ]
  before_action :set_division, only: %i[ show edit update new ]

  # GET /division_users or /division_users.json
  def index
    @division_users = DivisionUser.all
  end

  # GET /division_users/1 or /division_users/1.json
  def show
  end

  # GET /division_users/new
  def new
    @division_user = DivisionUser.new
  end

  # GET /division_users/1/edit
  def edit
  end

  # POST /division_users or /division_users.json
  def create
    @division_user = DivisionUser.new(division_user_params)

    respond_to do |format|
      if @division_user.save
        format.html { redirect_to division_user_url(@division_user), notice: "Division user was successfully created." }
        format.json { render :show, status: :created, location: @division_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @division_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /division_users/1 or /division_users/1.json
  def update
    respond_to do |format|
      if @division_user.update(division_user_params)
        format.html { redirect_to division_user_url(@division_user), notice: "Division user was successfully updated." }
        format.json { render :show, status: :ok, location: @division_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @division_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /division_users/1 or /division_users/1.json
  def destroy
    @division_user.destroy

    respond_to do |format|
      format.html { redirect_to division_users_url, notice: "Division user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_division_user
      @division_user = DivisionUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def division_user_params
      params.require(:division_user).permit(:position, :points, :victorys, :loses, :draws, :goal_scoredes, :goal_concededs, :position_previous, :exact_scores, :user_id, :division_id, :username)
    end

    def set_user
      @users = User.all
    end

    def set_division
      @divisions = Division.all
    end

end
