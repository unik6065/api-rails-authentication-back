class ApplicationController < ActionController::Base
  before_action :set_csft_cookie

  private

  def set_csft_cookie
    cookies['CSRF-TOKEN'] = {
      value: form_authenticity_token,
      domain: :all,
      same_site: :none,
      secure: true
    }
  end
end
