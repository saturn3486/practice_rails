class TichetsController < ApplicationController
  before_action :set_tichet, only: [:show, :edit, :update, :destroy]

  # GET /tichets
  # GET /tichets.json
  def index
    @tichets = Tichet.all
  end

  # GET /tichets/1
  # GET /tichets/1.json
  def show
  end

  # GET /tichets/new
  def new
    @tichet = Tichet.new
  end

  # GET /tichets/1/edit
  def edit
  end

  # POST /tichets
  # POST /tichets.json
  def create
    @tichet = Tichet.new(tichet_params)

    respond_to do |format|
      if @tichet.save
        format.html { redirect_to @tichet, notice: 'Tichet was successfully created.' }
        format.json { render :show, status: :created, location: @tichet }
      else
        format.html { render :new }
        format.json { render json: @tichet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tichets/1
  # PATCH/PUT /tichets/1.json
  def update
    respond_to do |format|
      if @tichet.update(tichet_params)
        format.html { redirect_to @tichet, notice: 'Tichet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tichet }
      else
        format.html { render :edit }
        format.json { render json: @tichet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tichets/1
  # DELETE /tichets/1.json
  def destroy
    @tichet.destroy
    respond_to do |format|
      format.html { redirect_to tichets_url, notice: 'Tichet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tichet
      @tichet = Tichet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tichet_params
      params.require(:tichet).permit(:name, :seat_id, :address, :price_paid)
    end
end
