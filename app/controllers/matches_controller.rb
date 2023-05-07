class MatchesController < ApplicationController
  before_action :set_match, only: %i[ show edit update destroy ]
  before_action :set_round, only: %i[ show edit update new index]
  before_action :set_championship, only: %i[ show edit update new index]
  before_action :set_team, only: %i[ show edit update new ]

  # template HTML
  layout 'application'

  # GET /matches or /matches.json
  def index
    @matches = Match.all

    @selected_championship_id = params[:championship_id] || session[:selected_championship_id]
    session[:selected_championship_id] = @selected_championship_id
    
    @selected_round_id = params[:round_id] || session[:selected_round_id]
    session[:selected_round_id] = @selected_round_id

    @matches = Match.where(round_id: @selected_round_id)

  end

  # GET /matches/1 or /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    @match = Match.new
  end

  # GET /matches/1/edit
  def edit
  end

  # POST /matches or /matches.json
  def create
    @match = Match.new(match_params)

    puts "chegou aqui 1"
    puts match_params.inspect
    puts @match.inspect
    
    respond_to do |format|
      if @match.save
        puts "chegou aqui 2"
        format.html { redirect_to matches_url, notice: "Match was successfully created." }
        format.json { render :show, status: :created, location: @match }
      else
        puts "erro ao salvar matches"
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1 or /matches/1.json
  def update

    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to matches_url, notice: "Match was successfully updated." }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1 or /matches/1.json
  def destroy
    @match.destroy

    respond_to do |format|
      format.html { redirect_to matches_url, notice: "Match was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def match_params
      params.require(:match).permit(:name, :score_home, :score_visit, :status, :match_date, :championship_id, :round_id, :teamhome_id, :teamvisit_id)
    end

    def set_round
      @rounds = Round.all
    end

    def set_championship
      @championships = Championship.all
    end

    def set_team
      @teams = Team.all
    end
end
