class AisVessalDestinationsController < ApplicationController
  before_action :set_ais_vessal_destination, only: [:show, :edit, :update, :destroy]

  # GET /ais_vessal_destinations
  # GET /ais_vessal_destinations.json
  def index
    @ais_vessal_destinations = AisVessalDestination.all
  end

  # GET /ais_vessal_destinations/1
  # GET /ais_vessal_destinations/1.json
  def show
  end

  # GET /ais_vessal_destinations/new
  def new
    @ais_vessal_destination = AisVessalDestination.new
  end

  # GET /ais_vessal_destinations/1/edit
  def edit
  end

  # POST /ais_vessal_destinations
  # POST /ais_vessal_destinations.json
  def create
    @ais_vessal_destination = AisVessalDestination.new(ais_vessal_destination_params)

    respond_to do |format|
      if @ais_vessal_destination.save
        format.html { redirect_to @ais_vessal_destination, notice: 'Ais vessal destination was successfully created.' }
        format.json { render :show, status: :created, location: @ais_vessal_destination }
      else
        format.html { render :new }
        format.json { render json: @ais_vessal_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ais_vessal_destinations/1
  # PATCH/PUT /ais_vessal_destinations/1.json
  def update
    respond_to do |format|
      if @ais_vessal_destination.update(ais_vessal_destination_params)
        format.html { redirect_to @ais_vessal_destination, notice: 'Ais vessal destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @ais_vessal_destination }
      else
        format.html { render :edit }
        format.json { render json: @ais_vessal_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ais_vessal_destinations/1
  # DELETE /ais_vessal_destinations/1.json
  def destroy
    @ais_vessal_destination.destroy
    respond_to do |format|
      format.html { redirect_to ais_vessal_destinations_url, notice: 'Ais vessal destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ais_vessal_destination
      @ais_vessal_destination = AisVessalDestination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ais_vessal_destination_params
      params.require(:ais_vessal_destination).permit(:vessel_id, :destination, :draught, :eta)
    end
end
