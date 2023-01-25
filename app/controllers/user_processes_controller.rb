class UserProcessesController < ApplicationController
  before_action :set_user_process, only: %i[ show edit update destroy ]


  # GET /user_processes or /user_processes.json
  def index
    @user_processes = UserProcess.all
  end

  # GET /user_processes/1 or /user_processes/1.json
  def show
  end

  # GET /user_processes/new
  def new
    @user_process = UserProcess.new
  end

  # GET /user_processes/1/edit
  def edit
  end

  # POST /user_processes or /user_processes.json
  def create
    @user_process = UserProcess.new(user_process_params)

    @user_process.calculate_product

    respond_to do |format|
      if @user_process.save
        format.html { redirect_to user_process_url(@user_process), notice: "User process was successfully created." }
        format.json { render :show, status: :created, location: @user_process }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_processes/1 or /user_processes/1.json
  def update
    respond_to do |format|
      if @user_process.update(user_process_params)
        format.html { redirect_to user_process_url(@user_process), notice: "User process was successfully updated." }
        format.json { render :show, status: :ok, location: @user_process }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_processes/1 or /user_processes/1.json
  def destroy
    @user_process.destroy

    respond_to do |format|
      format.html { redirect_to user_processes_url, notice: "User process was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_process
      @user_process = UserProcess.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_process_params
      params.require(:user_process).permit(:name, :weight, :evaluation, :company_area_id)
    end
end
