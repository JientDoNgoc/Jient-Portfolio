module DefaultPageContent
    extend ActiveSupport::Concern
    
    included do 
        before_action :set_page_defaults
    end
    
    def set_page_defaults
        @page_title = "Jient Portfolio | My Portfolio Website"
        @seo_keywords = "Jient DoNgoc portfolio"
    end
end