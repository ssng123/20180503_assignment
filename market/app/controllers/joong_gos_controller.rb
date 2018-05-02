class JoongGosController < ApplicationController
  before_action :set_joong_go, only: [:show, :edit, :update, :destroy]

  # GET /joong_gos
  # GET /joong_gos.json
  def index
    @joong_gos = JoongGo.all
  end

  # GET /joong_gos/1
  # GET /joong_gos/1.json
  def show
  end

  # GET /joong_gos/new
  def new
    @joong_go = JoongGo.new
  end

  # GET /joong_gos/1/edit
  def edit
  end

  # POST /joong_gos
  # POST /joong_gos.json
  def create
    @joong_go = JoongGo.new(joong_go_params)

    respond_to do |format|
      if @joong_go.save
        format.html { redirect_to @joong_go, notice: 'Joong go was successfully created.' }
        format.json { render :show, status: :created, location: @joong_go }
      else
        format.html { render :new }
        format.json { render json: @joong_go.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joong_gos/1
  # PATCH/PUT /joong_gos/1.json
  def update
    respond_to do |format|
      if @joong_go.update(joong_go_params)
        format.html { redirect_to @joong_go, notice: 'Joong go was successfully updated.' }
        format.json { render :show, status: :ok, location: @joong_go }
      else
        format.html { render :edit }
        format.json { render json: @joong_go.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joong_gos/1
  # DELETE /joong_gos/1.json
  def destroy
    @joong_go.destroy
    respond_to do |format|
      format.html { redirect_to joong_gos_url, notice: 'Joong go was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joong_go
      @joong_go = JoongGo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joong_go_params
      params.require(:joong_go).permit(:팔기, :물건, :가격, :상태)
    end
end
