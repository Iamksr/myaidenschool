class DevisonsController < ApplicationController
  before_action :set_devison, only: [:show, :edit, :update, :destroy]

  # GET /devisons
  # GET /devisons.json
  def index
    @devisons = Devison.all
  end

  # GET /devisons/1
  # GET /devisons/1.json
  def show
  end

  # GET /devisons/new
  def new
    @devison = Devison.new
  end

  # GET /devisons/1/edit
  def edit
  end

  # POST /devisons
  # POST /devisons.json
  def create
    @devison = Devison.new(devison_params)

    respond_to do |format|
      if @devison.save
        format.html { redirect_to @devison, notice: 'Devison was successfully created.' }
        format.json { render :show, status: :created, location: @devison }
      else
        format.html { render :new }
        format.json { render json: @devison.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devisons/1
  # PATCH/PUT /devisons/1.json
  def update
    respond_to do |format|
      if @devison.update(devison_params)
        format.html { redirect_to @devison, notice: 'Devison was successfully updated.' }
        format.json { render :show, status: :ok, location: @devison }
      else
        format.html { render :edit }
        format.json { render json: @devison.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devisons/1
  # DELETE /devisons/1.json
  def destroy
    @devison.destroy
    respond_to do |format|
      format.html { redirect_to devisons_url, notice: 'Devison was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devison
      @devison = Devison.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devison_params
      params.require(:devison).permit(:sec)
    end
end
