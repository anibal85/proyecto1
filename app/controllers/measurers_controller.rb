class MeasurersController < ApplicationController
  before_action :set_measurer, only: [:show, :edit, :update, :destroy]


  # GET /measurers
  # GET /measurers.json
  def index
    @measurers = Measurer.all
    end

  # GET /measurers/1
  # GET /measurers/1.json
  def show
  end

  # GET /measurers/new
  def new
    @measurer = Measurer.new
  end

  # GET /measurers/1/edit
  def edit
  end

  # POST /measurers
  # POST /measurers.json
  def create
    @measurer = Measurer.new(measurer_params)

    respond_to do |format|
      if @measurer.save
        format.html { redirect_to @measurer, notice: 'Measurer was successfully created.' }
        format.json { render :show, status: :created, location: @measurer }
      else
        format.html { render :new }
        format.json { render json: @measurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measurers/1
  # PATCH/PUT /measurers/1.json
  def update
    respond_to do |format|
      if @measurer.update(measurer_params)
        format.html { redirect_to @measurer, notice: 'Measurer was successfully updated.' }
        format.json { render :show, status: :ok, location: @measurer }
      else
        format.html { render :edit }
        format.json { render json: @measurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurers/1
  # DELETE /measurers/1.json
  def destroy
    @measurer.destroy
    respond_to do |format|
      format.html { redirect_to measurers_url, notice: 'Measurer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurer
      @measurer = Measurer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurer_params
      params.require(:measurer).permit(:id_measure, :name, :uni, :description, :umbrail)
    end
end
