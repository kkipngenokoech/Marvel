class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :filter_by_color, -> (color) {where color: color}
  scope :filter_by_size, -> (size) {where size: size}
  scope :filter_by_character, -> (character) {where character: character}
end
