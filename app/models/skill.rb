class Skill < ApplicationRecord
    include Placeholder
    validates_presence_of :title, :percent_utilized

    after_initialize :set_defaults
    
    def set_defaults
        # Se o valor for nil, aplica-se link, se não, apenas ignora
        # É o msm que if self.main_image == nil? e depois aplicar
        self.badge ||= Placeholder.image_generator(height: '250', width: '250')
    end
end
