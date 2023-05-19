class WaitstaffsController < ApplicationController
  before_action :set_waitstaff, only: %i[ show edit update destroy ]

  # GET /waitstaffs or /waitstaffs.json
  def index
    @waitstaffs = Waitstaff.all
  end

  # GET /waitstaffs/1 or /waitstaffs/1.json
  def show
  end

  # GET /waitstaffs/new
  def new
    @waitstaff = Waitstaff.new
  end

  # GET /waitstaffs/1/edit
  def edit
  end

  # POST /waitstaffs or /waitstaffs.json
  def create
    @waitstaff = Waitstaff.new(waitstaff_params)

    respond_to do |format|
      if @waitstaff.save
        format.html { redirect_to waitstaff_url(@waitstaff), notice: "Waitstaff was successfully created." }
        format.json { render :show, status: :created, location: @waitstaff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @waitstaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waitstaffs/1 or /waitstaffs/1.json
  def update
    respond_to do |format|
      if @waitstaff.update(waitstaff_params)
        format.html { redirect_to waitstaff_url(@waitstaff), notice: "Waitstaff was successfully updated." }
        format.json { render :show, status: :ok, location: @waitstaff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @waitstaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waitstaffs/1 or /waitstaffs/1.json
  def destroy
    @waitstaff.destroy

    respond_to do |format|
      format.html { redirect_to waitstaffs_url, notice: "Waitstaff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waitstaff
      @waitstaff = Waitstaff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def waitstaff_params
      params.require(:waitstaff).permit(:waiter_id, :name)
    end
end
