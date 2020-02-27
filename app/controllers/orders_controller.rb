class OrdersController < ApplicationController


  # creer une methode add order_item dans order
  def add
    raise
    #1 on va creer un panier
    @order = Order.create(user: current_user)

    #2 on rajoute la box selectionne au panier
      #a on va chercher la box
      @order_item = Order_item.find(params[:id])

      #b on associe la box au panier
      @order_item.order = @order
      raise

  end

  def my_orders
   @my_orders = Order.where(user: current_user)
  end

  def show
    @orders = Orders.find(params[:id])
  end


end
