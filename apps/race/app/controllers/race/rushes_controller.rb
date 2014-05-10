module Race
  class RushesController < ::Race::ApplicationController
    def index
      @races = Rush.all
    end

    def new
      @race = Rush.new
    end

    def create
      @race = Rush.new(rushes_params)
      respond_to do |format|
        if @race.save
          format.html { redirect_to rushes_path }
        end
      end
    end
  private
    def rushes_params
      params.require(:rush).permit(:name)
    end
  end
end
