class DealsController < ApplicationController
  def index
    @deals = Deal.all
    customer = Customer.find_by(:id => rand(1..3))
    session[:user_id] = customer.id
    session[:user_type] = customer.user_type
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(deal_params)

    if @deal.save
      redirect_to deals_path
    else
      render :new
    end
  end

  def edit
    @deal = Deal.find_by(:id => params[:id])
  end

  def update
    @deal = Deal.find_by(:id => params[:id])

    if @deal.update(deal_params)
      redirect_to deals_path
    else
      render :edit
    end
  end

  def destroy
    deal = Deal.find_by(:id => params[:id])
    deal.destroy
     redirect_to deals_path
  end

  private
  def deal_params
  	params.require(:deal).permit!
  end
end
