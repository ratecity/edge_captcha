module EdgeCaptcha
  module Validate
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def validates_captcha
        helper EdgeCaptcha::CaptchaHelper
        include EdgeCaptcha::Validate::InstanceMethods
      end
    end

    module InstanceMethods
      def captcha_validated?
        EdgeCaptcha::Util::encrypt_string(params[:captcha].to_s.gsub(' ', '').downcase) == params[:captcha_validation]
      end    
    end  
  end
end
