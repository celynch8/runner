class RunCardsController < ApplicationController
  before_action :set_run_card, only: [:show, :edit, :update, :destroy]

  # GET /run_cards
  # GET /run_cards.json
  def index
    @run_cards = RunCard.all
  end

  # GET /run_cards/1
  # GET /run_cards/1.json
  def show
  end

  # GET /run_cards/new
  def new
    @run_card = RunCard.new
  end

  # GET /run_cards/1/edit
  def edit
  end

  # POST /run_cards
  # POST /run_cards.json
  def create
    @run_card = RunCard.new(run_card_params)

    respond_to do |format|
      if @run_card.save
        format.html { redirect_to @run_card, notice: 'Run card was successfully created.' }
        format.json { render action: 'show', status: :created, location: @run_card }
      else
        format.html { render action: 'new' }
        format.json { render json: @run_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /run_cards/1
  # PATCH/PUT /run_cards/1.json
  def update
    respond_to do |format|
      if @run_card.update(run_card_params)
        format.html { redirect_to @run_card, notice: 'Run card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @run_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /run_cards/1
  # DELETE /run_cards/1.json
  def destroy
    @run_card.destroy
    respond_to do |format|
      format.html { redirect_to run_cards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_run_card
      @run_card = RunCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def run_card_params
      params.require(:run_card).permit(:pace, :distance, :type, :day, :time, :target_distance, :target_race)
    end
end
