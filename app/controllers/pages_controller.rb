class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def shops
  end

  def about
  end

  def shops
    @shops = Shop.all
  end
end
