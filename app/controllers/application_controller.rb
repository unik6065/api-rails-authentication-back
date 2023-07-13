class ApplicationController < ActionController::Base
  before_action :set_csft_cookie

  private

  def set_csft_cookie
    cookies['CSRF-TOKEN'] = form_authenticity_token
  end
end
