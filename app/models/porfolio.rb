class Porfolio < ApplicationRecord
		has_many :technologies
		accepts_nested_attributes_for :technologies, 
																	reject_if: lambda { |attrs| attrs['name'].blank? }
    include Placeholder
    validates_presence_of :title, :body, :main_image, :thumb_image

    # Scope para busca personalizada. Usa ruby_on_rails_items no lugar de where no controller
    scope :ruby_on_rails_items, -> { where(subtitle: "Ruby on rails")}

    after_initialize :set_defaults
    
    def set_defaults
			# Se o valor for nil, aplica-se link, se não, apenas ignora
			# É o msm que if self.main_image == nil? e depois aplicar
			self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
			self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
    end
end
