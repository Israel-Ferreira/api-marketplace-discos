# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :cart

  has_one :credit_card, dependent: :destroy
  accepts_nested_attributes_for :credit_card, allow_destroy: true

  validates :value_to_pay, numericality: { greather_than: 0 }
end
