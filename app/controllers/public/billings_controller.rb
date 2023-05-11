class Public::BillingsController < ApplicationController
  def index
    @billings = Billing.all.order(created_at: :desc)
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
end
