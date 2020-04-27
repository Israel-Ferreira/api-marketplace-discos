class PurchaseSerializer < ActiveModel::Serializer
  attributes :value_to_pay
  belongs_to :user
  belongs_to :cart
  has_one :credit_card
end
