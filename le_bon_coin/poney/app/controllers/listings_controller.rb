class ListingsController < ApplicationController
  before_action :set_listing, only: [:edit, :destroy, :show, :update]
  before_action :set_params, only: [:create, :update]

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create

    listing = Listing.create(@listing_params)
    redirect_to listing_path(listing)

  end

  def edit
  end

  def destroy
    @listing.destroy
    redirect_to root_path
  end

  def update
    @listing.update!(@listing_params)
    redirect_to listing_path(@listing)
  end

  def show
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def set_params
    @listing_params = params.require(:listing).permit(:title, :photo_url, :city, :price, :message)
  end

end


