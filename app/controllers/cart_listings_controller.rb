class CartListingsController < ApplicationController
  include CurrentCart

  before_action :set_cart, only: [:create]
  before_action :set_cart_listing, only: [:show, :edit, :update, :destroy]

  def create
    listing = Listing.find(params[:listing_id])
    if @cart.listings.include?(listing)
      redirect_to listings_path, alert: "This job is already in your folder."
    else
      @cart_listing = @cart.add_listing(listing.id)
      @cart_listing.save
      redirect_to listings_path, notice: "#{listing.title} has been added to your folder."
    end
  end

  # def update
  #   # if current_cart.include?(@cart_listing)
  #   #   render :new, notice: 'This job is already in your cart.'
  #   # else
  #     @cart_listing.save
  #   # end

  #   if current_user && current_user.role == 'admin'
  #     redirect_to administrator_order_path(@cart_listing.order)
  #   else
  #     redirect_to cart_path(current_cart)
  #   end
  # end

  def destroy
    @cart_listing = CartListing.find(params[:id])
    @cart_listing.destroy

    respond_to do |format|
      format.html { redirect_to cart_path(@cart_listing.cart), notice: 'Listing was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private

  def cart_listing_params
    params.require(:cart_listing).permit(:listing_id)
  end

  def set_cart_listing
    @cart_listing = CartListing.find(params[:id])
  end
end
