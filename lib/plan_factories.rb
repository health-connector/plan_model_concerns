PLAN_GEM_ROOT = File.dirname(File.dirname(__FILE__))

Dir[File.join(PLAN_GEM_ROOT, 'spec', 'factories', '*.rb')].each { |file| require(file) }
