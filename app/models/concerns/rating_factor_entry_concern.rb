require 'active_support/concern'

module RatingFactorEntryConcern
  extend ActiveSupport::Concern

  included do
    include Mongoid::Document

    embedded_in :rating_factor_set

    field :factor_key, type: String
    field :factor_value, type: Float

    validates_numericality_of :factor_value, :allow_blank => false
    validates_presence_of :factor_key, :allow_blank => false
  end

  class_methods do
    ## class methods and constants go here
  end

  ## define regular methods here
end
