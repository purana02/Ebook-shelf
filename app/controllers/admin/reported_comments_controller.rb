class Admin::ReportedCommentsController < ApplicationController
  def update
    @reported = ReportedComment.find(params[:id])
    if @reported.is_fixed == true
      @reported.update(is_fixed: false)
      redirect_to admin_reporteds_path
    else
      @reported.update(is_fixed: true)
      redirect_to admin_reporteds_path
    end
  end
end
