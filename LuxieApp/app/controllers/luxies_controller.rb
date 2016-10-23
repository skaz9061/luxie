class LuxiesController < ApplicationController
  before_action :set_luxie, only: [:show, :edit, :update, :destroy]

  # GET /luxies
  # GET /luxies.json
  def index
    @luxies = Luxie.all
  end

  # GET /luxies/1
  # GET /luxies/1.json
  def show
  end

  # GET /luxies/new
  def new
    @luxie = Luxie.new
  end

  # GET /luxies/1/edit
  def edit
  end

  # POST /luxies
  # POST /luxies.json
  def create
    @luxie = Luxie.new(luxie_params)

    respond_to do |format|
      if @luxie.save
        format.html { redirect_to @luxie, notice: 'Luxie was successfully created.' }
        format.json { render :show, status: :created, location: @luxie }
      else
        format.html { render :new }
        format.json { render json: @luxie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /luxies/1
  # PATCH/PUT /luxies/1.json
  def update
    respond_to do |format|
      if @luxie.update(luxie_params)
        format.html { redirect_to @luxie, notice: 'Luxie was successfully updated.' }
        format.json { render :show, status: :ok, location: @luxie }
      else
        format.html { render :edit }
        format.json { render json: @luxie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /luxies/1
  # DELETE /luxies/1.json
  def destroy
    @luxie.destroy
    respond_to do |format|
      format.html { redirect_to luxies_url, notice: 'Luxie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_luxie
      @luxie = Luxie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def luxie_params
      params.require(:luxie).permit(:alert, :promo)
    end
end
