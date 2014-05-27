module Race
  class UsersController < ::Race::ApplicationController
    def index
      client = Stormpath::Client.new(
          {
              :api_key => Marabit2::Application.config.storm_path_api_key
          }
      )
      marabit_app = client.applications.search({:name => "Marabit"}).first

      @accounts = marabit_app.accounts
      account = Rails.cache.read(session[:storm_path_session_id])
      @account_name = account[:full_name]
    end
  end
end
