class Review < ApplicationRecord
    # text_field :review, type: String
    # field :tshirt_id, type: Integer
    has_one_attached :picture
end
