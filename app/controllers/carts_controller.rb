class CartsController < ApplicationController
  def index
    @carts = Cart.where(:customer_id => session[:user_id], :status => 1)
    @cart = Cart.new
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def new
  	@deals = Deal.all.pluck(:title, :id)
    @cart = Cart.new
  end

  def create
    @cart = Cart.new(order_params)
    deal = Deal.find_by(:id => @cart.deal_id)
    deal.update(:quantity => deal.quantity-1)
    if @cart.save
      redirect_to carts_path
    else
      render :new
    end
  end
  

  def update
  	cart_ids = params[:cart_ids]
  	if cart_ids.present?
	  	cart_ids.each do |val|
	  		cart = Cart.find(val.to_i)
	  		order_count = Order.where(:customer_id => session[:user_id]).count
	  		customer = Customer.find_by(:id => session[:user_id])
	  		if order_count > 5
	  		  dis_amount = (cart.deal.price.to_i)/100 * 5
	  		else
	  		  dis_amount = (cart.deal.price.to_i)/100 * order_count
	  		end
	  		tot_amount = cart.deal.price.to_i - dis_amount.to_i
	  		order = Order.new
	  		order.deal_id = cart.deal_id
	  		order.customer_id = cart.customer_id
	  		order.deal_id = cart.deal_id
	  		order.address = customer.address
	  		order.mobile_number = customer.mobile_number
	  		order.discount = dis_amount
	  		order.total_amount = tot_amount
	  		order.save
	  		cart.update(:status => 0)
	  	end
    end
  	redirect_to orders_path
  end

  def destroy
  	@cart = Cart.find_by(:id => params[:id])
  	deal = Deal.find_by(:id => @cart.deal_id)
    deal.update(:quantity => deal.quantity+1)
    @cart.destroy
     redirect_to carts_path
  end

  private
  def order_params
  	params.require(:cart).permit!
  end
end
