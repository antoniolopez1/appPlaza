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
  end
  def parkch
  end
  def colorch
  end

  def turn_on_all
    

  end
  def turn_off_all
    
  end
end
