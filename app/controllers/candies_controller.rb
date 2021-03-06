class CandiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @candies = Candy.all
      if params[:query].present?
        sql_query = "name ILIKE :query"
         @candies = Candy.search_by_name params[:query]
        end


    @candies = @candies.geocoded
    @markers = @candies.map do |candy|
      {
        lat: candy.latitude,
        lng: candy.longitude,
        infoWindow: render_to_string(partial: "candies/infowindow", locals: { candy: candy })
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
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
    @candy = current_user.candies.find_by(id: params[:id])
  end

  def update
    @candy = Candy.find(params[:id])
    if @candy.update(candy_params)
      redirect_to profile_path
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
