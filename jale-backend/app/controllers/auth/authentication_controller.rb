class Auth::AuthenticationController < ApplicationController

    # - - - </> [TEST] </> - - - >
    # binding.break

    before_action :authorize_request, except: :login

    # POST /auth/login
    def login

        # - - - </> [USER] </> - - - >
        @user = User.find_by(user_email: params[:user_email])

        # - - - </> [PASS] </> - - - >
        if @user&.authenticate(params[:password])

            # - - - </> [CODE] </> - - - >
            @current_token = Token.find_by(user_id: @user.id)
            
            if !@current_token.blank?

                # - - - </> [ERROR] </> - - - >
                render json: { error: 'Token is already created!', token: @current_token.token_code }
                
            else

                # - - - </> [CODE] </> - - - >
                @token = JsonWebToken.encode(user_id: @user.id)

                # - - - </> [TIME] </> - - - >
                @time = Time.now + 24.hours.to_i

                # - - - </> [SAVE] </> - - - >
                Token.create!(token_code: @token, token_date: @time, user_id: @user.id)

                # - - - </> [JSON] </> - - - >
                render json: { user_id: @user.id, user_name: @user.user_name, user_lastname: @user.user_lastname,
                user_email: @user.user_email, user_birthdate: @user.user_birthdate, token_code: @token,
                token_date: @time.strftime("%m-%d-%Y %H:%M") }, status: :ok

            end

        else

            # - - - </> [ERROR] </> - - - >
            render json: { error: 'unauthorized' }, status: :unauthorized
            
        end

    end

    # DELETE /auth/logout
    # def logout

    #     # - - - </> [USER] </> - - - >
    #     @user = User.find_by(user_email: params[:user_email])

    #     # - - - </> [CODE] </> - - - >
    #     @token = Token.find_by(user_id: @user.id)
        
    #     # - - - </> [DATA] </> - - - >
    #     @token.destroy!

    #     # - - - </> [JSON] </> - - - >
    #     render json: { user_id: @user.id, user_name: @user.user_name, token: "Token deleted successfully!" }, status: :ok
      
    # end

    # DELETE /auth/logout
    def logout

        header = request.headers['Authorization']
        header = header.split(' ').last if header

        if header.blank?
            render json: { message: "Token not found!" }, status: 401
        end

        @token = Token.find_by(token_code: header)

        if @token.blank?
            render json: { message: "Token not found!" }, status: 401
        end
        
        @token.destroy!

        render json: { token: "Token deleted successfully!" }, status: :ok
      
    end

end
