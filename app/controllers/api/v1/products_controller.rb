# frozen_string_literal: true

class Api::V1::ProductsController < Api::V1::ApiController
  before_action :set_product, only: [:show]

  def index
    @products = Product.all
    render json: @products
  end

  def show
    render json: @product
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:artist, :year, :album, :price, :store, :thumb)
  end
end
