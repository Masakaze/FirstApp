class Bounenkai2015sController < ApplicationController
  before_action :set_bounenkai2015, only: [:show, :edit, :update, :destroy]

  # GET
  def home

  end

  # GET /bounenkai2015s
  # GET /bounenkai2015s.json
  def index
    @bounenkai2015s = Bounenkai2015.all
  end

  # GET /bounenkai2015s/1
  # GET /bounenkai2015s/1.json
  def show
  end

  # GET /bounenkai2015s/new
  def new
    @bounenkai2015 = Bounenkai2015.new
  end

  # GET /bounenkai2015s/1/edit
  def edit
  end

  # POST /bounenkai2015s
  # POST /bounenkai2015s.json
  def create
    @bounenkai2015 = Bounenkai2015.new(bounenkai2015_params)

    respond_to do |format|
      if @bounenkai2015.save
        format.html { redirect_to @bounenkai2015, notice: 'Bounenkai2015 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bounenkai2015 }
      else
        format.html { render action: 'new' }
        format.json { render json: @bounenkai2015.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bounenkai2015s/1
  # PATCH/PUT /bounenkai2015s/1.json
  def update
    respond_to do |format|
      if @bounenkai2015.update(bounenkai2015_params)
        format.html { redirect_to @bounenkai2015, notice: 'Bounenkai2015 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bounenkai2015.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bounenkai2015s/1
  # DELETE /bounenkai2015s/1.json
  def destroy
    @bounenkai2015.destroy
    respond_to do |format|
      format.html { redirect_to bounenkai2015s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bounenkai2015
      @bounenkai2015 = Bounenkai2015.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bounenkai2015_params
      params[:bounenkai2015]
    end
end
