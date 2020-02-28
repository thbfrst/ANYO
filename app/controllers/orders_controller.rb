class OrdersController < ApplicationController

  def add
    @order = Order.create(user: current_user)
      @order_item = Order_item.find(params[:id])
      @order_item.order = @order
  end

  def my_orders
   @my_orders = current_user.orders.where(payed: false)
   @total_orders = @my_orders.map(&:total_pay).sum
  end

  def show
    @orders = Orders.find(params[:id])
  end




end
