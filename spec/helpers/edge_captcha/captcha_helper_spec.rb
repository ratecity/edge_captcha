require 'spec_helper'
module EdgeCaptcha
  describe CaptchaHelper do
    it'.captcha_image(options={})' do
      assert helper.captcha_image
    end

    it '.captcha_input_text' do
      assert helper.captcha_block
    end

    it '.captcha_hidden_text' do
      assert helper.captcha_hidden_text
    end

    it '.captcha_block' do
      assert helper.captcha_block
    end
  end
end

