if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_api-rails-authentification',
                                                        domain: 'https://app-front.jcloud.ik-server.com/'
else
  Rails.application.config.session_store :cookie_store, key: '_api-rails-authentification'
end
