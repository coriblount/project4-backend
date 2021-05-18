class Api::V1::AuthController < ApplicationController

    skip_before_action :verify_authenticity_token

    def login
        user = User.find_by(username: auth_param[:name])

        if user && user.authenticate(auth_param[:password])
            puts 'authenticated'
            render json: {username: user.name, token: JWT.encode({user_id: user.id}, "deez")}
        else
            # byebug
            render json: {
               error: "Incorrect username or password",
               status: 401
            }, status: 401
            puts 'not auth'
        end
    end

    def auth_param
        # params.require(:auth)
        # params.permit(:name, :username, :password, :auth)
        params.permit(:name, :username, :password)
    end

end
