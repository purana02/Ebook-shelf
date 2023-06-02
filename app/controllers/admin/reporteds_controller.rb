class Admin::ReportedsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @genres = Genre.all
    @sites = Site.all
    @reporteds = Reported.all.order(created_at: :desc).page(params[:page])
    @reporteds_all = Reported.all
    @reported_comments = ReportedComment.all.order(created_at: :desc).page(params[:page])
    @reported_comments_all = ReportedComment.all
  end

  def update
    @reported = Reported.find(params[:id])
    if @reported.is_fixed == true
      @reported.update(is_fixed: false)
      redirect_to admin_reporteds_path
    elsif @reported.is_fixed == false
      @reported.update(is_fixed: true)
      redirect_to admin_reporteds_path
    end
  end
end
