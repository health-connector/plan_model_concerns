require 'active_support/concern'

module CompositeRatingTierFactorSetConcern
  extend ActiveSupport::Concern

  included do
    include Mongoid::Document
    include MongoidSupport::AssociationProxies

    validate :only_valid_tier_names
  end

  class_methods do
    def value_for(carrier_profile_id, year, val)
      record = self.where(carrier_profile_id: carrier_profile_id, active_year: year).first
      if record.present?
        record.lookup(val)
      else
        logger.error "Lookup for #{val} failed with no FactorSet found: Carrier: #{carrier_profile_id}, Year: #{year}"
        1.0
      end
    end
  end

  def only_valid_tier_names
    invalid_entries = rating_factor_entries.any? do |rfe|
      !CompositeRatingTier::NAMES.include?(rfe.factor_key)
    end
    if invalid_entries
      errors.add(:rating_factor_entries, "Contain invalid tier names.")
    end
  end
end
