class OrderItemsController < ApplicationController

  def index
    @order_items = order_item.all
  end

  def show
    @order_item = order_item.find(params[:id])
  end

  def new
    @order_item = order_item.new
  end

  def create
    @order_item = order_item.new(order_items_params)
    if @order_item.save
      redirect_to order_items_path
    else
      render :new
    end
  end

  def edit
    @order_item = Order_item.find(params[:id])
  end

  def update
     if @order_item.update(order_items_params)
      redirect_to order_items_path
    else
      render :edit
    end
  end

  def destroy
    @order_item = Order_item.find(params[:id])
    @order_item.destroy
    redirect_to order_items_path
  end


  private

  def order_items_params
    params.require(:order_item).permit(:quantity)
  end
end
