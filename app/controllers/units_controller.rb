class UnitsController < ApplicationController

  def show
    @unit = Unit.find(params[:id])
    session[:unit_id] = @unit.id
  end

end
