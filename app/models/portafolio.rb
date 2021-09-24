class Portafolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thum_image
end
