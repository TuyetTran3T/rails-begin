class PortVesselsController < ApplicationController
  before_action :set_port_vessel, only: [:show, :edit, :update, :destroy]

  # GET /port_vessels
  # GET /port_vessels.json
  def index
    @port_vessels = PortVessel.all
  end

  # GET /port_vessels/1
  # GET /port_vessels/1.json
  def show
  end

  # GET /port_vessels/new
  def new
    @port_vessel = PortVessel.new
  end

  # GET /port_vessels/1/edit
  def edit
  end

  # POST /port_vessels
  # POST /port_vessels.json
  def create
    @port_vessel = PortVessel.new(port_vessel_params)

    respond_to do |format|
      if @port_vessel.save
        format.html { redirect_to @port_vessel, notice: 'Port vessel was successfully created.' }
        format.json { render :show, status: :created, location: @port_vessel }
      else
        format.html { render :new }
        format.json { render json: @port_vessel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /port_vessels/1
  # PATCH/PUT /port_vessels/1.json
  def update
    respond_to do |format|
      if @port_vessel.update(port_vessel_params)
        format.html { redirect_to @port_vessel, notice: 'Port vessel was successfully updated.' }
        format.json { render :show, status: :ok, location: @port_vessel }
      else
        format.html { render :edit }
        format.json { render json: @port_vessel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /port_vessels/1
  # DELETE /port_vessels/1.json
  def destroy
    @port_vessel.destroy
    respond_to do |format|
      format.html { redirect_to port_vessels_url, notice: 'Port vessel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_port_vessel
      @port_vessel = PortVessel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_vessel_params
      params.require(:port_vessel).permit(:port_id, :vessel_id, :last_position_updated_at, :nav_status_code)
    end
end
