class TshirtsController < ApplicationController
  before_action :set_tshirt, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show, :filter]
  before_action :check_role, only: [:new,:edit,:delete]

  # GET /tshirts or /tshirts.json
  def index
    @tshirts = Tshirt.where(nil)
    @tshirts = Tshirt.filter_by_color(params[:color]) if params[:color].present?
    @tshirts = Tshirt.filter_by_size(params[:size]) if params[:size].present?
    @tshirts = Tshirt.filter_by_character(params[:character]) if params[:character].present?
  end

  # GET /tshirts/1 or /tshirts/1.json
  def show
  end

  # GET /tshirts/new
  def new
    @tshirt = Tshirt.new
  end

  # GET /tshirts/1/edit
  def edit
  end

  # POST /tshirts or /tshirts.json
  def create
    @tshirt = Tshirt.new(tshirt_params)

    respond_to do |format|
      if @tshirt.save
        format.html { redirect_to tshirt_url(@tshirt), notice: "Tshirt was successfully created." }
        format.json { render :show, status: :created, location: @tshirt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tshirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tshirts/1 or /tshirts/1.json
  def update
    respond_to do |format|
      if @tshirt.update(tshirt_params)
        format.html { redirect_to tshirt_url(@tshirt), notice: "Tshirt was successfully updated." }
        format.json { render :show, status: :ok, location: @tshirt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tshirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tshirts/1 or /tshirts/1.json
  def destroy
    @tshirt.destroy

    respond_to do |format|
      format.html { redirect_to tshirts_url, notice: "Tshirt was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def filter
  end
  def coords
    @tshirts = Tshirt.all
  end
  def search
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tshirt
      @tshirt = Tshirt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tshirt_params
      params.require(:tshirt).permit(:color, :character, :size, :image)
    end

    def check_role
      user = current_user
      if user.role == false
        redirect_to root_url, notice: "You are not authorized to perform this action."
      end
    end
end
