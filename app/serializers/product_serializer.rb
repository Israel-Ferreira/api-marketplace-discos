# frozen_string_literal: true

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :artist, :price, :store, :thumb
end
