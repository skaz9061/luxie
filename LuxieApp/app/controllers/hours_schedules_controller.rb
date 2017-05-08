class HoursSchedulesController < ApplicationController
  before_action :set_luxie
	before_action :set_hours_schedule, only: [:show, :edit, :update, :destroy]

  # GET /hours_schedules
  # GET /hours_schedules.json
  def index
    @hours_schedules = @luxie.info.hours
  end

  # GET /hours_schedules/1
  # GET /hours_schedules/1.json
  def show
  end

  # GET /hours_schedules/new
  def new
    @hours_schedule = HoursSchedule.new
		@path = luxie_store_info_hours_schedules_path(@luxie)
  end

  # GET /hours_schedules/1/edit
  def edit
		@path = luxie_store_info_hours_schedule_path(@luxie, @hours_schedule)
  end

  # POST /hours_schedules
  # POST /hours_schedules.json
  def create
    @hours_schedule = @luxie.info.hours.new(hours_schedule_params)

    respond_to do |format|
      if @hours_schedule.save
        format.html { redirect_to luxie_store_info_hours_schedules_path(@luxie), notice: 'Hours schedule was successfully created.' }
        format.json { render :show, status: :created, location: @hours_schedule }
      else
        format.html { render :new }
        format.json { render json: @hours_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hours_schedules/1
  # PATCH/PUT /hours_schedules/1.json
  def update
    respond_to do |format|
      if @hours_schedule.update(hours_schedule_params)
        format.html { redirect_to luxie_store_info_hours_schedules_path(@luxie), notice: 'Hours schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @hours_schedule }
      else
        format.html { render :edit }
        format.json { render json: @hours_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours_schedules/1
  # DELETE /hours_schedules/1.json
  def destroy
    @hours_schedule.destroy
    respond_to do |format|
      format.html { redirect_to luxie_store_info_hours_schedules_url(@luxie), notice: 'Hours schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hours_schedule
      @hours_schedule = HoursSchedule.find(params[:id])
    end
	
		def set_luxie
			@luxie = Luxie.find(params[:luxie_id])
		end
	
    # Never trust parameters from the scary internet, only allow the white list through.
    def hours_schedule_params
      params.require(:hours_schedule).permit(:days, :open, :close, :store_info_id)
    end
end
