class GripsController < ApplicationController
  before_action :set_grip, only: [:show, :edit, :update, :destroy]

  # GET /grips
  # GET /grips.json
  def index
    @grips = Grip.all
  end

  # GET /grips/1
  # GET /grips/1.json
  def show
  end

  # GET /grips/new
  def new
    @grip = Grip.new
  end

  # GET /grips/1/edit
  def edit
  end

  # POST /grips
  # POST /grips.json
  def create
    @grip = Grip.new(grip_params)

    respond_to do |format|
      if @grip.save
        format.html { redirect_to @grip, notice: 'Grip was successfully created.' }
        format.json { render action: 'show', status: :created, location: @grip }
      else
        format.html { render action: 'new' }
        format.json { render json: @grip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grips/1
  # PATCH/PUT /grips/1.json
  def update
    respond_to do |format|
      if @grip.update(grip_params)
        format.html { redirect_to @grip, notice: 'Grip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @grip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grips/1
  # DELETE /grips/1.json
  def destroy
    @grip.destroy
    respond_to do |format|
      format.html { redirect_to grips_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grip
      @grip = Grip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grip_params
      params.require(:grip).permit(:name)
    end
end
