require 'active_support/concern'

module PremiumTableConcern
  extend ActiveSupport::Concern
  
  included do
    include Mongoid::Document
    include ConfigRatingAreaConcern
    
    field :age, type: Integer
    field :start_on, type: Date
    field :end_on, type: Date
    field :cost, type: Float
    field :rating_area, type: String

    validates_presence_of :age, :start_on, :end_on, :cost

    validates_inclusion_of :rating_area, :in => market_rating_areas, :allow_nil => true
  end
end



  