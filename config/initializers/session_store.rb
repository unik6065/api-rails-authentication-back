if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_api-rails-authentification',
                                                        domain: :all,
                                                        httponly: true,
                                                        same_site: :none,
                                                        secure: true
else
  Rails.application.config.session_store :cookie_store, key: '_api-rails-authentification'
end
