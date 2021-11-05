Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.development? || Rails.env.test?
        provider :github, "8680b7afd3079ed8bfd9", "ff05fc4317ac2fa47badcc5257390e34f6a678bb"
    else
        provider :github, 
        Rails.application.credentials.github[:client_id],
        Rails.application.credentials.github[:client_secret]
    end
end
