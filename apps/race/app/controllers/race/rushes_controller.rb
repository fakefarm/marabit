module Race
  class RushesController < ::Race::ApplicationController
    def index
      @races = Rush.all
    end

    def new
      @race = Rush.new
    end

    def create
      @race = Rush.new
    end
  end
end
