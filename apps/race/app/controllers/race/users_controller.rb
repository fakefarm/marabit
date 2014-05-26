module Race
  class UsersController < ::Race::ApplicationController
    def index
      puts "#{__FILE__}:#{__LINE__} Marabit2::Application.application.config: #{Marabit2::Application.config.storm_path_api_key.inspect}"
      client = Stormpath::Client.new(
          {
              :api_key => Marabit2::Application.config.storm_path_api_key
          }
      )
      marabit_app = client.applications.search({:name => "Marabit"}).first

      @accounts = marabit_app.accounts
    end
  end
end
