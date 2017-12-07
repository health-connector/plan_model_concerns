require 'active_support/concern'

module CompositeRatingTierConcern
  extend ActiveSupport::Concern

  included do |base|
    base::EMPLOYEE_ONLY = EMPLOYEE_ONLY
    base::EMPLOYEE_AND_SPOUSE = EMPLOYEE_AND_SPOUSE
    base::EMPLOYEE_AND_ONE_OR_MORE_DEPENDENTS = EMPLOYEE_AND_ONE_OR_MORE_DEPENDENTS
    base::FAMILY = FAMILY

    base::NAMES = NAMES
    base::VISIBLE_NAMES = VISIBLE_NAMES
  end

  class_methods do
    EMPLOYEE_ONLY = "employee_only"
    EMPLOYEE_AND_SPOUSE = "employee_and_spouse"
    EMPLOYEE_AND_ONE_OR_MORE_DEPENDENTS = "employee_and_one_or_more_dependents"
    FAMILY = "family"

    NAMES = [
      EMPLOYEE_ONLY,
      EMPLOYEE_AND_SPOUSE,
      EMPLOYEE_AND_ONE_OR_MORE_DEPENDENTS,
      FAMILY
    ]

    VISIBLE_NAMES = [
      EMPLOYEE_ONLY,
      FAMILY
    ]
  end

  ## define regular methods here
end
