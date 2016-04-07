class EnsayosController < ApplicationController
  before_action :set_ensayo, only: [:show, :edit, :update, :destroy]

  # GET /ensayos
  # GET /ensayos.json
  def index
    @ensayos = Ensayo.all
  end

  # GET /ensayos/1
  # GET /ensayos/1.json
  def show
    @ensayos = Ensayo.all
  end

  # GET /ensayos/new
  def new
    @ensayo = Ensayo.new
  end

  # GET /ensayos/1/edit
  def edit
  end

  # POST /ensayos
  # POST /ensayos.json
  def create
    @ensayo = Ensayo.new(ensayo_params)

    respond_to do |format|
      if @ensayo.save
        format.html { redirect_to @ensayo, notice: 'Ensayo was successfully created.' }
        format.json { render :show, status: :created, location: @ensayo }
      else
        format.html { render :new }
        format.json { render json: @ensayo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ensayos/1
  # PATCH/PUT /ensayos/1.json
  def update
    respond_to do |format|
      if @ensayo.update(ensayo_params)
        format.html { redirect_to @ensayo, notice: 'Ensayo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ensayo }
      else
        format.html { render :edit }
        format.json { render json: @ensayo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ensayos/1
  # DELETE /ensayos/1.json
  def destroy
    @ensayo.destroy
    respond_to do |format|
      format.html { redirect_to ensayos_url, notice: 'Ensayo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ensayo
      @ensayo = Ensayo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ensayo_params
      params.require(:ensayo).permit(:titlo, :pdf, :autor)
    end
end
