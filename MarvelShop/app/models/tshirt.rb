class Tshirt < ApplicationRecord
  scope :filter_by_color, -> (color) {where color: color}
  scope :filter_by_size, -> (size) {where size: size}
  scope :filter_by_character, -> (character) {where character: character}
  has_one_attached :image

  has_many :comments
end
