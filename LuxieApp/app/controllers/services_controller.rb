class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
	before_action :set_luxie
	before_action :set_service_category
	
  # GET /services
  # GET /services.json
  def index
    @services = @service_category.services
		
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = @service_category.services.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to [@luxie, @service_category, @service], notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to [@luxie, @service_category, @service], notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to [@luxie, @service_category], notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end
	
		def set_luxie
			@luxie = Luxie.find(params[:luxie_id])
		end
	
		def set_service_category
			@service_category = ServiceCategory.find(params[:service_category_id])
		end
    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:name, :price, :note, :label, :description)
    end
end
