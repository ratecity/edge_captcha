require 'digest/sha1'

module EdgeCaptcha
  class Util
    def self.random_image
      files = Dir.glob("#{Rails.root}/public/system/captcha/*.*")
      @@captcha_files ||= files.map {|f| File.basename(f)}
      @@captcha_files[rand(@@captcha_files.size)]
    end

    def self.encrypt_string(string)
      salt = 'This really should be random'
      if defined?(CAPTCHA_SALT)
        salt = CAPTCHA_SALT
      else
        Rails.logger.warn("No salt defined, please add CAPTHCA_SALT = 'Something really random' to environment.rb")
      end  
      Digest::SHA1.hexdigest("#{salt}#{string}")
    end
  end
end
