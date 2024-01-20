class ApplicationController < ActionController::API

    def not_found

        # - - - </> [ERROR] </> - - - >
        render json: { error: 'not_found' }
        
    end

    def authorize_request

        # - - - </> [HEAD] </> - - - >
        header = request.headers['Authorization']
        header = header.split(' ').last if header

        begin

            # - - - </> [CODE] </> - - - >
            @decoded = JsonWebToken.decode(header)

            # - - - </> [USER] </> - - - >
            @current_user = User.find(@decoded[:user_id])

            # - - - </> [CODE] </> - - - >
            @current_token = Token.find_by(token_code: header)

            if @current_token.blank?

                # - - - </> [ERROR] </> - - - >
                render json: { errors: "Token isn't unauthorized!" }, status: :unauthorized

            end

        rescue ActiveRecord::RecordNotFound => e

            # - - - </> [ERROR] </> - - - >
            render json: { errors: e.message }, status: :unauthorized

        rescue JWT::DecodeError => e

            # - - - </> [ERROR] </> - - - >
            render json: { errors: e.message }, status: :unauthorized

        end
        
    end

end
