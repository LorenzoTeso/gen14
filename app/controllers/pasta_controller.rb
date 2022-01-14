class PastaController < ApplicationController
  before_action :set_pastum, only: %i[ show edit update destroy ]

  # GET /pasta or /pasta.json
  def index
    @pasta = Pastum.all
  end

  # GET /pasta/1 or /pasta/1.json
  def show
  end

  # GET /pasta/new
  def new
    @pastum = Pastum.new
  end

  # GET /pasta/1/edit
  def edit
  end

  # POST /pasta or /pasta.json
  def create
    @pastum = Pastum.new(pastum_params)

    respond_to do |format|
      if @pastum.save
        format.html { redirect_to pastum_url(@pastum), notice: "Pastum was successfully created." }
        format.json { render :show, status: :created, location: @pastum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pastum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pasta/1 or /pasta/1.json
  def update
    respond_to do |format|
      if @pastum.update(pastum_params)
        format.html { redirect_to pastum_url(@pastum), notice: "Pastum was successfully updated." }
        format.json { render :show, status: :ok, location: @pastum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pastum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pasta/1 or /pasta/1.json
  def destroy
    @pastum.destroy

    respond_to do |format|
      format.html { redirect_to pasta_url, notice: "Pastum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pastum
      @pastum = Pastum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pastum_params
      params.require(:pastum).permit(:nome, :produttore, :descrizione, :cottura, :peso)
    end
end
