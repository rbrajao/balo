class ChampionshipsController < ApplicationController
  before_action :set_championship, only: %i[ show edit update destroy ]

  # GET /championships or /championships.json
  def index
    @championships = Championship.all
  end

  # GET /championships/1 or /championships/1.json
  def show
  end

  # GET /championships/new
  def new
    @championship = Championship.new
  end

  # GET /championships/1/edit
  def edit
  end

  # POST /championships or /championships.json
  def create
    @championship = Championship.new(championship_params)

    respond_to do |format|
      if @championship.save
        format.html { redirect_to championship_url(@championship), notice: "Championship was successfully created." }
        format.json { render :show, status: :created, location: @championship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /championships/1 or /championships/1.json
  def update
    respond_to do |format|
      if @championship.update(championship_params)
        format.html { redirect_to championship_url(@championship), notice: "Championship was successfully updated." }
        format.json { render :show, status: :ok, location: @championship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /championships/1 or /championships/1.json
  def destroy
    @championship.destroy

    respond_to do |format|
      format.html { redirect_to championships_url, notice: "Championship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_championship
      @championship = Championship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def championship_params
      params.require(:championship).permit(:name, :description, :status)
    end
end
