class Portafolio < ApplicationRecord
  has_many :tecnologies
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  #Opcion
  def self.angular 
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(:subtitle => 'Ruby on Rails')}
  # Ex:- scope :active, -> {where(:active => true)}

  after_initialize :set_defaults

  def set_defaults
    self.main_image  ||= Placeholder.image_generator(heigth: '600', width:'400') 
    self.thumb_image ||= Placeholder.image_generator(heigth: '350', width:'200')
  end

end
