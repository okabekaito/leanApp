Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.development? || Rails.env.test?
        provider :github, "8680b7afd3079ed8bfd9", "9bdc7c38697efa1ffe2410d6a0597d902026d9c0"
    else
        provider :github, 
        Rails.application.credentials.github[:client_id],
        Rails.application.credentials.github[:client_secret]
    end
end
