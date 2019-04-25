class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    # get the clicked order 
    @order=Order.find(params[:id])
    # get all order details 
    orderDetails = OrderDetail.all
    @orderDetailsList =[]
    # push the ones with orderID equal to the one we want 
    orderDetails.each do |orderD|
      p orderD.order_id
    if(orderD.order_id == @order.id)
      p "yes"
      @orderDetailsList.push(orderD)
    end
  end


  end

  def new
    @order = Order.new

    @user_id = current_user.id
    @current_cart_items= Cart.where(user_id: @user_id).first.items
    @shipping_info= ShippingInfo.where(user_id: @user_id).last(5)
    @total = 0 
    @first_cart_items= @current_cart_items.first(5)


   @current_cart_items.each do |item| 
    current_item =  CartItem.where(id: item).first
    if current_item
    product = Product.where(id: current_item.product_id).first 
    else
    current_item = CartItem.all.first
    product = Product.where(id: current_item.product_id).first 
    end
        end
      

    # current_cart_items.each do |item| 
    # current_item =  CartItem.where(id: item).first
    # product = Product.where(id: current_item.product_id).first 
    # end
  end
  def create
      order = Order.create(order_params)
      p "placed order"
      # redirect_to products_path
  end 

  def edit
  end

  private 
    def order_params
        params.permit( :total, :quantity , :shipping_id , :user_id )
    end
end
