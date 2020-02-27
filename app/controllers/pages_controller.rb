class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @candies = Candy.all
  end

  def profile
    @orders = current_user.orders
    @username = current_user.username
    @candies = current_user.candies
  end
end
