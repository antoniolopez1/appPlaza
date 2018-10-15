class LucesController < ApplicationController
  def index
  end
  def status
    @luces=Luce.first
    json_string=LuceSerializer.new(@luces).serialized_json
    render json: @luces
    #render json: json_string
  end

end
