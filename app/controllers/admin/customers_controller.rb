class Admin::CustomersController < ApplicationController
  def index
    @genres = Genre.all
    @sites = Site.all
    @customers = Customer.all
  end

  def show
  end
  def edit
  end
end
