class Portafolio < ApplicationRecord
  has_many :tecnologies
  accepts_nested_attributes_for :tecnologies, 
                                reject_if: lambda { |attrs| attrs['name'].blank? } 

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
    self.main_image  ||= Placeholder.image_generator(height: '600', width:'400') 
    self.thumb_image ||= Placeholder.image_generator(height: '350', width:'200')
  end

end
