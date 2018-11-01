class WashersController < ApplicationController
  before_action :set_washer, only: [:show, :edit, :update, :destroy]

  # GET /washers
  # GET /washers.json
  def index
    @washers = Washer.all
  end

  # GET /washers/1
  # GET /washers/1.json
  def show
    @washer = Washer.find(params[:id])
  end

  # GET /washers/new
  def new
    @washer = Washer.new
  end

  # GET /washers/1/edit
  def edit
  end

  # POST /washers
  # POST /washers.json
  def create
    @washer = Washer.new(washer_params)

    respond_to do |format|
      if @washer.save
        flash[:success] = "You are now a Loopie washer!"
        log_in @washer
        format.html { redirect_to @washer }
        format.json { render :show, status: :created, location: @washer }
      else
        format.html { render :new }
        format.json { render json: @washer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /washers/1
  # PATCH/PUT /washers/1.json
  def update
    respond_to do |format|
      if @washer.update(washer_params)
        flash[:success] = "Your profile has been successfully updated"
        format.html { redirect_to @washer }
        format.json { render :show, status: :ok, location: @washer }
      else
        format.html { render :edit }
        format.json { render json: @washer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /washers/1
  # DELETE /washers/1.json
  def destroy
    @washer.destroy
    respond_to do |format|
      format.html { redirect_to washers_url, notice: 'Washer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_washer
      @washer = Washer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def washer_params
      params.require(:washer).permit(:username, :password, :password_confirmation, :firstname, :lastname, :email, :phone, :address_1, :address_2, :city, :state, :zip_code, :machine_description, :washing_status, :max_loads, :current_loads, :total_loads_completed, :start_date)
    end
end
