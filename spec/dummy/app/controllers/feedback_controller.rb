class FeedbackController < ApplicationController
  validates_captcha
  def index
    @feedback = Feedback.new(params[:feedback])
    if request.method == 'POST'
      if captcha_validated?
        render :text => 'valid form'
      else
        flash.now[:error] = "Problem With Captcha"
      end
    end
  end
end

