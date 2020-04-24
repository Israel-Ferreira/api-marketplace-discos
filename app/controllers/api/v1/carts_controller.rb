# frozen_string_literal: true

class Api::V1::CartsController < Api::V1::ApiController
  def index
    @carts = Cart.where(user: current_user)
    render json: @carts
  end

  def add_to_cart
    @cart = Cart.new(cart_params)
    @cart.user = current_user

    if @cart.save!
      render json: @cart, status: :created
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  private

  def cart_params
    params.require(:cart).permit(:product_id)
  end
end
