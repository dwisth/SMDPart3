class SocietiesController < ApplicationController
  before_action :set_society, only: [:show, :edit, :update, :destroy]
  #From Q6
  before_action :authenticate_user!, only: [:edit, :new, :update, :destroy]

  # GET /societies
  # GET /societies.json
  def index
    if current_user.webAdmin
      @societies = Society.all
    else
      @societies = Society.where('verified = ?', true)
    end
  end

  # GET /societies/1
  # GET /societies/1.json
  def show
  end

  # GET /societies/new
  def new
    @society = Society.new
  end

  # GET /societies/1/edit
  def edit
  end

  # POST /societies
  # POST /societies.json
  def create
    @society = Society.new(society_params)
    if !current_user.webAdmin
      @society.verified=false
    end
    respond_to do |format|
      if @society.save
        format.html { redirect_to @society, notice: 'Society was successfully created.' }
        format.json { render action: 'show', status: :created, location: @society }
      else
        format.html { render action: 'new' }
        format.json { render json: @society.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /societies/1
  # PATCH/PUT /societies/1.json
  def update
    respond_to do |format|
      if @society.update(society_params)
        format.html { redirect_to @society, notice: 'Society was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @society.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /societies/1
  # DELETE /societies/1.json
  def destroy
    if current_user.webAdmin
      @society.destroy
      respond_to do |format|
        format.html { redirect_to societies_url }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_society
      @society = Society.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def society_params
      params.require(:society).permit(:name, :description, :membershipFee, :verified)
    end

    def is_webAdmin?
      current_user.webAdmin
    end
end
