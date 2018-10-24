class LucesController < ApplicationController
  def index
  end
  def status
    @luces=Luce.first
    json_string=LuceSerializer.new(@luces).serialized_json
    render json: @luces
    #render json: json_string
  end
  def perch
    @luces=Luce.first
    @luces.perim=params[:value]
    @luces.save
    head :ok
  end
  def intch
    @luces=Luce.first
    @luces.inter=params[:value]
    @luces.save
    head :ok
  end
  def parkch
    @luces=Luce.first
    @luces.park=params[:value]
    @luces.save
    head :ok
  end
  def colorch
    @luces=Luce.first
    @luces.par_r=params[:r]
    @luces.par_g=params[:g]
    @luces.par_b=params[:b]
    @luces.save
    head :ok
  end

  def turn_on_all
    @luces=Luce.first
    @luces.perim=1
    @luces.inter=1
    @luces.park=1
    @luces.par_r= 80
    @luces.par_g=240
    @luces.par_b=215
    @luces.save
    head :ok
  end
  def turn_off_all
    @luces=Luce.first
    @luces.perim=0
    @luces.inter=0
    @luces.park=0
    @luces.par_r=0
    @luces.par_g=0
    @luces.par_b=0
    @luces.save
    head :ok
  end
end
