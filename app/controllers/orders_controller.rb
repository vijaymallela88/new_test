class OrdersController < ApplicationController
  def index
    @orders = Order.where(:customer_id => session[:user_id])
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @deals = Deal.all.pluck(:title, :id)
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    customer_id = Customer.find_by(:id => rand(1..3)).id
    @order.update(:customer_id => customer_id)
    deal = Deal.find_by(:id => @order.deal_id)
    deal.update(:quantity => deal.quantity-1)
    if @order.save
      redirect_to orders_path
    else
      render :new
    end
  end

  private
  def order_params
  	params.require(:order).permit!
  end
end
