class OrderItemsController < ApplicationController

  def index
    @order_items = OrderItem.all
  end

  def show
    @order_item = OrderItem.find(params[:id])
  end

  def new
    @order_item = OrderItem.new
  end


  def create
    #creer panier ou pas

    #creer un panier si payed true


    #utiliser le panier existant si payed false

    @order_item = OrderItem.new(order_items_params)
    @candy = Candy.find(params[:candy_id])
    @order_item.candy = @candy
    @order = Order.create(user: current_user)
    @order_item.order = @order
    if @order_item.save
      redirect_to @candy
    else
      render :new
    end
  end

  def edit
    @order_item = OrderItem.find(params[:id])
  end

  def update
     if @order_item.update(order_items_params)
      redirect_to order_items_path
    else
      render :edit
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    redirect_to order_items_path
  end


  private

  def order_items_params
    params.require(:order_item).permit(:quantity)
  end
end
