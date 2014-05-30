module Race
  class RushesController < ::Race::ApplicationController
    def index
      @rushes = Rush.all
      @update = NumericUpdate.new
      @updates = NumericUpdate.all
    end

    def index_edit
      @rushes = Rush.all
    end

    def new
      @race = Rush.new
      @update = NumericUpdate.new
    end

    def create
      @race = Rush.new(rushes_params)
      respond_to do |format|
        if @race.save
          format.html { redirect_to root_path }
        end
      end
    end
  private
    def rushes_params
      params.require(:rush).permit(:name, :metric, :description)
    end
  end
end
