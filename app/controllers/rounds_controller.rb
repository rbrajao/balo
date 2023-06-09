class RoundsController < ApplicationController
  before_action :set_round, only: %i[ show edit update destroy ]
  before_action :set_championship, only: %i[ show edit update new index]

  # template do portal 
  layout 'application'

  # GET /rounds or /rounds.json
  def index
    # if params[:championship_id].present?
      
      @selected_championship_id = params[:championship_id] || session[:selected_championship_id]
      session[:selected_championship_id] = @selected_championship_id
      @rounds = Round.where(championship_id: @selected_championship_id)
      

    # else
    #   @rounds = Round.all
    # end
  end

  # GET /rounds/1 or /rounds/1.json
  def show
  end

  # GET /rounds/new
  def new
    @round = Round.new
  end

  # GET /rounds/1/edit
  def edit
  end

  # POST /rounds or /rounds.json
  def create
    @round = Round.new(round_params)

    respond_to do |format|
      if @round.save
        format.html { redirect_to rounds_url, notice: "Round was successfully created." }
        format.json { render :show, status: :created, location: @round }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rounds/1 or /rounds/1.json
  def update
    respond_to do |format|
      if @round.update(round_params)
        format.html { redirect_to rounds_url, notice: "Round was successfully updated." }
        format.json { render :show, status: :ok, location: @round }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rounds/1 or /rounds/1.json
  def destroy
    @round.destroy

    respond_to do |format|
      format.html { redirect_to rounds_url, notice: "Round was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def by_championship
    rounds = Round.where(championship_id: params[:championship_id])
    render json: rounds
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      @round = Round.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def round_params
      params.require(:round).permit(:name, :limit_date_bet, :description, :status, :championship_id)
    end


    def set_championship
      @championships = Championship.all
    end

end
