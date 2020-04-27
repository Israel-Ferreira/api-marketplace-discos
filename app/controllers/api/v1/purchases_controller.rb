# frozen_string_literal: true

class Api::V1::PurchasesController < ApplicationController
  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.user = current_user

    if @purchase.save
      render json: @purchase, status: :created
    else
      render json: @purchase.errors, status: :unprocessable_entity
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:cart_id, :value_to_pay,
                                     credit_card_attributes: %i[
                                       c_number c_holder_name cvv exp_date
                                     ])
  end
end
