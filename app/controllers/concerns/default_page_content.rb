# frozen_string_literal: true

# DefaultPageContent module
module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Devcamp Portfolio | Chathura Hettiarachchi'
    @seo_keywords = 'Chathura\'s Portfolio'
  end
end
