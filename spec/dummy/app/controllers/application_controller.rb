class ApplicationController < ActionController::Base
  helper EdgeCaptcha::Engine.helpers
  include EdgeCaptcha::Validate
  protect_from_forgery
end
