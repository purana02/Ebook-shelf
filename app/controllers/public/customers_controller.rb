class Public::CustomersController < ApplicationController
  before_action :ensure_guest_user, only: [:edit]
  
  def show
    @comics = current_customer.having_comics.all
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
    @customer = current_customer
    if @customer.nickname == "guestuser"
      redirect_to customer_path, notice: 'ゲストユーザーはプロフィール編集画面へ遷移できません。'
    end
  end  
end
