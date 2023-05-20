class Public::BillingsController < ApplicationController
  before_action :authenticate_customer!
  def index
    if site_params.present?
      @billings = current_customer.billings.where(site_id: params[:site_id]).order(created_at: :desc)
    else
      @billings = current_customer.billings.all.order(created_at: :desc)
    end
  end

  def new
    @billing = Billing.new
  end

  def create
    @billing = Billing.new(billing_params)
    @billing.customer_id = current_customer.id
    if @billing.save
      flash[:notice] = "登録が完了しました"
      redirect_to customer_billings_path
    else
      render 'new'
    end
  end

  def edit
    @billing = Billing.find(params[:id])
    @site = Site.where(id: @billing.site_id)
  end

  def update
    @billing = Billing.find(params[:id])
    if @billing.update(billing_params)
      flash[:notice] = "登録が完了しました"
      redirect_to customer_billings_path
    else
      render 'edit'
    end
  end

  private
  def billing_params
    params.require(:billing).permit(:site_id, :price, :post_date)
  end

  def site_params
    params.permit(:site_id)
  end
end
