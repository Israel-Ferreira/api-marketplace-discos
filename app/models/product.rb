# frozen_string_literal: true

class Product < ApplicationRecord
  validates :artist, :year, :album, :price, :store, presence: true
  validates :price, numericality: { only_integer: true, greather_than: 0 }

  scope :find_by_album, ->(album) { find_by(album: album) }
  
end
