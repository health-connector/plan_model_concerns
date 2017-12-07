require 'active_support/concern'

module OrganizationPlanConcern
  extend ActiveSupport::Concern

  included do
    #Include any modules here
    #Calls to class methods go here
    #to override methods defined via Includes, use class << self
    embeds_one :carrier_profile, cascade_callbacks: true, validate: true ## PlanConcern
  end

  class_methods do
    ## class methods and constants go here
  end

  ## define regular methods here
end
