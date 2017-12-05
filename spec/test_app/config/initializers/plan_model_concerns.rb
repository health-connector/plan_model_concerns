PlanModelConcerns.configure do |config|
  config.settings = Settings

  class PlanModelConcerns::TimeKeeper < TimeKeeper
  end

  class PlanModelConcerns::Organization < Organization
  end
end
