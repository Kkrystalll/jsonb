class PunchTimesController < ApplicationController
  before_action :set_punch_time, only: %i[ show edit update destroy ]

  # GET /punch_times or /punch_times.json
  def index
    @punch_times = PunchTime.all
  end

  # GET /punch_times/1 or /punch_times/1.json
  def show
  end

  # GET /punch_times/new
  def new
    @punch_time = PunchTime.new
  end

  # GET /punch_times/1/edit
  def edit
  end

  # POST /punch_times or /punch_times.json
  def create
    @punch_time = PunchTime.new(punch_time_params)

    respond_to do |format|
      if @punch_time.save
        format.html { redirect_to punch_time_url(@punch_time), notice: "Punch time was successfully created." }
        format.json { render :show, status: :created, location: @punch_time }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @punch_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /punch_times/1 or /punch_times/1.json
  def update
    respond_to do |format|
      if @punch_time.update(punch_time_params)
        format.html { redirect_to punch_time_url(@punch_time), notice: "Punch time was successfully updated." }
        format.json { render :show, status: :ok, location: @punch_time }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @punch_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punch_times/1 or /punch_times/1.json
  def destroy
    @punch_time.destroy

    respond_to do |format|
      format.html { redirect_to punch_times_url, notice: "Punch time was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punch_time
      @punch_time = PunchTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def punch_time_params
      params.require(:punch_time).permit(:punch_time, :punch_type, punch_note: [:date, :note])
    end
end
