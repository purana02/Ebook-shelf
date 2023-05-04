class Public::CustomersController < ApplicationController
  before_action :ensure_guest_user, only: [:edit]
  def show
  end

  def edit
  end

  def update
  end

  def confirm_deleted
  end

  def is_deleted
  end
  
  private
  def ensure_guest_user
    @customer = Customer.find(params[:id])
    if @customer.name == "guestuser"
      redirect_to customer_path, notice: 'ゲストユーザーはプロフィール編集画面へ遷移できません。'
    end
  end  
end
