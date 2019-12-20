class MystreamsController < ApplicationController
  before_action :set_mystream, only: [:show, :edit, :update, :destroy]

  # GET /mystreams
  # GET /mystreams.json
  def index
    @mystreams = Mystream.all
  end

  # GET /mystreams/1
  # GET /mystreams/1.json
  def show
  end

  # GET /mystreams/new
  def new
    @mystream = Mystream.new
  end

  # GET /mystreams/1/edit
  def edit
  end

  # POST /mystreams
  # POST /mystreams.json
  def create
    @mystream = Mystream.new(mystream_params)

    respond_to do |format|
      if @mystream.save
        format.html { redirect_to @mystream, notice: 'Mystream was successfully created.' }
        format.json { render :show, status: :created, location: @mystream }
      else
        format.html { render :new }
        format.json { render json: @mystream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mystreams/1
  # PATCH/PUT /mystreams/1.json
  def update
    respond_to do |format|
      if @mystream.update(mystream_params)
        format.html { redirect_to @mystream, notice: 'Mystream was successfully updated.' }
        format.json { render :show, status: :ok, location: @mystream }
      else
        format.html { render :edit }
        format.json { render json: @mystream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mystreams/1
  # DELETE /mystreams/1.json
  def destroy
    @mystream.destroy
    respond_to do |format|
      format.html { redirect_to mystreams_url, notice: 'Mystream was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mystream
      @mystream = Mystream.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mystream_params
      params.require(:mystream).permit(:name, :dept)
    end
end
