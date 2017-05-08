class StoreInfosController < ApplicationController
	before_action :set_luxie
  before_action :set_store_info, only: [:show, :edit, :update, :destroy]
	
  # GET /store_infos
  # GET /store_infos.json
  def index
    @store_infos = StoreInfo.all
  end

  # GET /store_infos/1
  # GET /store_infos/1.json
  def show
  end

  # GET /store_infos/new
  def new
    @store_info = StoreInfo.new
  end

  # GET /store_infos/1/edit
  def edit
  end

  # POST /store_infos
  # POST /store_infos.json
  def create
    @store_info = StoreInfo.new(store_info_params)
		@luxie.info = @store_info
		
    respond_to do |format|
      if @store_info.save
				@luxie.save
				
        format.html { redirect_to @luxie, notice: 'Store info was successfully created.' }
        format.json { render :show, status: :created, location: @store_info }
      else
        format.html { render :new }
        format.json { render json: @store_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_infos/1
  # PATCH/PUT /store_infos/1.json
  def update
    respond_to do |format|
      if @store_info.update(store_info_params)
        format.html { redirect_to @luxie, notice: 'Store info was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_info }
      else
        format.html { render :edit }
        format.json { render json: @store_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_infos/1
  # DELETE /store_infos/1.json
  def destroy
    @store_info.destroy
    respond_to do |format|
      format.html { redirect_to @luxie, notice: 'Store info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_info
      @store_info = @luxie.info || @luxie.info.new
    end

		def set_luxie
			@luxie = Luxie.find(params[:luxie_id])
		end
	
    # Never trust parameters from the scary internet, only allow the white list through.
    def store_info_params
      params.require(:store_info).permit(:name, :phone_number, :email, :description, address_attributes: [:id, :luxie_id, :store_info_id, :street_address, :city, :state, :zip])
    end
end
