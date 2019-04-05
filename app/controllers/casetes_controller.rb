class CasetesController < ApplicationController
  before_action :set_casete, only: [:show, :edit, :update, :destroy]

  # GET /casetes
  # GET /casetes.json
  def index
    @casetes = Casete.all
  end

  # GET /casetes/1
  # GET /casetes/1.json
  def show
  end

  # GET /casetes/new
  def new
    @casete = Casete.new
  end

  # GET /casetes/1/edit
  def edit
  end

  # POST /casetes
  # POST /casetes.json
  def create
    @casete = Casete.new(casete_params)

    respond_to do |format|
      if @casete.save
        format.html { redirect_to @casete, notice: 'Casete was successfully created.' }
        format.json { render :show, status: :created, location: @casete }
      else
        format.html { render :new }
        format.json { render json: @casete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casetes/1
  # PATCH/PUT /casetes/1.json
  def update
    respond_to do |format|
      if @casete.update(casete_params)
        format.html { redirect_to @casete, notice: 'Casete was successfully updated.' }
        format.json { render :show, status: :ok, location: @casete }
      else
        format.html { render :edit }
        format.json { render json: @casete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casetes/1
  # DELETE /casetes/1.json
  def destroy
    @casete.destroy
    respond_to do |format|
      format.html { redirect_to casetes_url, notice: 'Casete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casete
      @casete = Casete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def casete_params
      params.require(:casete).permit(:formato, :pelicula_id)
    end
end
