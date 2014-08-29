class AssignmentsController < ApplicationController

  def show
    @assignment = Assignment.find(params[:id])
    @unit = @assignment.unit_id
  end

end
