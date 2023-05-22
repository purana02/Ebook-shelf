class Public::CustomersController < ApplicationController
  before_action :ensure_guest_user, only: [:edit]
  before_action :authenticate_customer!
  def show
    @havings = current_customer.having_comics.page(params[:page])
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      flash[:notice] = "編集が成功しました"
      redirect_to customer_path
    else
      render :edit
    end
  end

  def confirm_deleted
    @customer = current_customer
  end

  def is_deleted
    @customer = current_customer
    if @customer.update(is_deleted: true)
      reset_session
      flash[:notice] = "退会しました"
      redirect_to root_path
    else
      render :show
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:nickname, :email)
  end

  def ensure_guest_user
    @customer = current_customer
    if @customer.nickname == "guestuser"
      redirect_to customer_path, notice: 'ゲストユーザーはプロフィール編集画面へ遷移できません。'
    end
  end
end
