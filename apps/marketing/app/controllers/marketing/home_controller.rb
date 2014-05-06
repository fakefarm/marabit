module Marketing
  class HomeController < ::Marketing::ApplicationController
    def index
      @greeting = "Hello from Marabit!"
    end
  end
end
