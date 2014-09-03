class GuidesController < ApplicationController

  def show
    @guide = Guide.find(params[:id])
    if session[:unit_id]
      @unit = Unit.find(session[:unit_id])
    end
  end

end
