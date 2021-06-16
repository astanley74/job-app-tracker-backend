class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, ENV["SECRET_KEY"])
    end

    def decoded_token(token)
        JWT.decode(token, ENV["SECRET_KEY"])[0]
    end
end
