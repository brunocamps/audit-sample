class CompanyAreasController < ApplicationController
  before_action :set_company_area, only: %i[ show edit update destroy ]

  # GET /company_areas or /company_areas.json
  def index
    @company_areas = CompanyArea.all
  end

  # GET /company_areas/1 or /company_areas/1.json
  def show
  end

  # GET /company_areas/new
  def new
    @company_area = CompanyArea.new
  end

  # GET /company_areas/1/edit
  def edit
  end

  # POST /company_areas or /company_areas.json
  def create
    @company_area = CompanyArea.new(company_area_params)

    respond_to do |format|
      if @company_area.save
        format.html { redirect_to company_area_url(@company_area), notice: "Company area was successfully created." }
        format.json { render :show, status: :created, location: @company_area }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_areas/1 or /company_areas/1.json
  def update
    respond_to do |format|
      if @company_area.update(company_area_params)
        format.html { redirect_to company_area_url(@company_area), notice: "Company area was successfully updated." }
        format.json { render :show, status: :ok, location: @company_area }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_areas/1 or /company_areas/1.json
  def destroy
    @company_area.destroy

    respond_to do |format|
      format.html { redirect_to company_areas_url, notice: "Company area was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_area
      @company_area = CompanyArea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_area_params
      params.require(:company_area).permit(:name)
    end
end
