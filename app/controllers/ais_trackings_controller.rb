class AisTrackingsController < ApplicationController
  before_action :set_ais_tracking, only: [:show, :edit, :update, :destroy]

  # GET /ais_trackings
  # GET /ais_trackings.json
  def index
    @ais_trackings = AisTracking.all
  end

  # GET /ais_trackings/1
  # GET /ais_trackings/1.json
  def show
  end

  # GET /ais_trackings/new
  def new
    @ais_tracking = AisTracking.new
  end

  # GET /ais_trackings/1/edit
  def edit
  end

  # POST /ais_trackings
  # POST /ais_trackings.json
  def create
    @ais_tracking = AisTracking.new(ais_tracking_params)

    respond_to do |format|
      if @ais_tracking.save
        format.html { redirect_to @ais_tracking, notice: 'Ais tracking was successfully created.' }
        format.json { render :show, status: :created, location: @ais_tracking }
      else
        format.html { render :new }
        format.json { render json: @ais_tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ais_trackings/1
  # PATCH/PUT /ais_trackings/1.json
  def update
    respond_to do |format|
      if @ais_tracking.update(ais_tracking_params)
        format.html { redirect_to @ais_tracking, notice: 'Ais tracking was successfully updated.' }
        format.json { render :show, status: :ok, location: @ais_tracking }
      else
        format.html { render :edit }
        format.json { render json: @ais_tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ais_trackings/1
  # DELETE /ais_trackings/1.json
  def destroy
    @ais_tracking.destroy
    respond_to do |format|
      format.html { redirect_to ais_trackings_url, notice: 'Ais tracking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ais_tracking
      @ais_tracking = AisTracking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ais_tracking_params
      params.require(:ais_tracking).permit(:latitude, :longtitude, :heading, :speed_over_ground, :last_ais_updated_at, :nav_status_code, :vessel_id, :course, :collection_type)
    end
end
