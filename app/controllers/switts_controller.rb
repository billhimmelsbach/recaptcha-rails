class SwittsController < ApplicationController
  before_action :set_switt, only: [:show, :edit, :update, :destroy]

  # GET /switts
  # GET /switts.json
  def index
    @switts = Switt.all
  end

  # GET /switts/1
  # GET /switts/1.json
  def show
  end

  # GET /switts/new
  def new
    @switt = Switt.new
  end

  # GET /switts/1/edit
  def edit
  end

  # POST /switts
  # POST /switts.json
  def create
    @switt = Switt.new(switt_params)

    respond_to do |format|
      if verify_recaptcha(model: @switt) && @switt.save
        format.html { redirect_to @switt, notice: 'Switt was successfully created.' }
        format.json { render :show, status: :created, location: @switt }
      else
        format.html { render :new }
        format.json { render json: @switt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /switts/1
  # PATCH/PUT /switts/1.json
  def update
    respond_to do |format|
      if verify_recaptcha(model: @switt) && @switt.update(switt_params)
        format.html { redirect_to @switt, notice: 'Switt was successfully updated.' }
        format.json { render :show, status: :ok, location: @switt }
      else
        format.html { render :edit }
        format.json { render json: @switt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /switts/1
  # DELETE /switts/1.json
  def destroy
    @switt.destroy
    respond_to do |format|
      format.html { redirect_to switts_url, notice: 'Switt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_switt
      @switt = Switt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def switt_params
      params.require(:switt).permit(:name, :super_power)
    end
end
