module Race
  class SessionsController < ::Race::ApplicationController
    def index
      #placeholder
    end

    def create
      client = Stormpath::Client.new(
          {
              :api_key => Marabit2::Application.config.storm_path_api_key
          }
      )
      marabit_app = client.applications.search({:name => "Marabit"}).first

      auth_request = Stormpath::Authentication::UsernamePasswordRequest.new params['email'], params['password']
      auth_result = marabit_app.authenticate_account auth_request
      account = auth_result.account
      storm_path_session_id = SecureRandom.uuid
      Rails.cache.write(storm_path_session_id, {full_name: account.full_name})
      session[:storm_path_session_id] = storm_path_session_id
      redirect_to users_url
    end
  end
end
