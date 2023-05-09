class Admin::CustomersController < ApplicationController
  def index
    @genres = Genre.all
    @sites = Site.all
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    @genres = Genre.all
    @sites = Site.all
    @reviews = Review.where(customer_id: params[:id]).order(created_at: :desc)
  end

  def edit
    @genres = Genre.all
    @sites = Site.all
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:notice] = "変更を保存しました"
      redirect_to admin_customer_path(@customer)
    else
      @genres = Genre.all
      @sites = Site.all
      render :edit
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:nickname, :email, :is_deleted)
  end
end
