require 'active_support/concern'

module ConfigRatingAreaConcern
  extend ActiveSupport::Concern
  
  included do
    delegate :market_rating_areas, to: :class
    delegate :multiple_market_rating_areas?, to: :class
  end
  
  class_methods do
    def market_rating_areas
      @@market_rating_areas ||= Settings.aca.rating_areas
    end

    def multiple_market_rating_areas?
      @@multiple_market_rating_areas ||= Settings.aca.rating_areas.many?
    end
  end
end
