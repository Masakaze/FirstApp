class Bounenkai2015sController < ApplicationController
  before_action :set_bounenkai2015, only: [:show, :edit, :update, :destroy]

  # GET
  def home
    
  end

  # POST
  def open_first_box
    @info = Bounenkai2015.first
    @is_already_open = @info.first_open_box_name != nil
    if params[:box_name] != 'A' && params[:box_name] != 'B'
      abort
    end

    @info.first_open_box_name = params[:box_name] if @is_already_open == false
    if @info.first_open_box_name == 'A'
      @key = @info.box_a_key
      @another_box_name = 'B'
    elsif @info.first_open_box_name == 'B'
      @key = @info.box_b_key
      @another_box_name = 'A'
    else
      abort
    end
    @info.save

    render 'open_first_box'
  end

  def open_second_box
    if params[:state] == "want"
      @msg = "それなら下の謎を解いてくださいよ!"
    else
      @msg = "まあまあ、そういわず。下の謎を解いてくださいm(_ _)m"
    end

    render 'open_second_box'
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
