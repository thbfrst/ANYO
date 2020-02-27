class CandiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @candies = Candy.all
      if params[:query].present?
        sql_query = "composition ILIKE :query"
         @candies = Candy.where(sql_query, query: "%#{params[:query]}%")
        end

    @markers = @candies.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @candy = Candy.find(params[:id])
    @order_item = OrderItem.new
  end

  def new
    @candy = Candy.new
  end

  def create
    @candy = Candy.new(candy_params)
    @candy.user = current_user
    if @candy.save
      redirect_to candy_path(@candy)
    else
      render :new
    end
  end

  def edit
    @candy = current_user.candies.find_by(id: params[:id])
  end

  def update
    if @candy.update(candy_params)
      redirect_to candy_path(@candy)
    else
      render :edit
    end
  end

  def destroy
    @candy = Candy.find(params[:id])
    @candy.destroy
    redirect_to candies_path
  end


  private

  def candy_params
    params.require(:candy).permit(:name, :composition, :address, :price, :availability)
  end

end
