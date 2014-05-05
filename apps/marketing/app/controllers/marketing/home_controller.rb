module Marketing
  class HomeController < ::Marketing::ApplicationController
    def index
      @greeting = "Hellow from Marabit!"
    end
  end
end
