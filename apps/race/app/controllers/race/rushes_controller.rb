module Race
  class RushesController < ::Race::ApplicationController
    def index
      @race = Rush.all
    end

    def new
      @race = Rush.new
    end
  end
end
