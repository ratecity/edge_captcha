module EdgeCaptcha
  class Engine < ::Rails::Engine
    isolate_namespace EdgeCaptcha
    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end
  end
end
