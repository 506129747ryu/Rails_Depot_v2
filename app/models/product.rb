class Product < ApplicationRecord
    validates_presence_of :title, :description, :image_url
    validates_uniqueness_of :title
    validates :image_url, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
end
