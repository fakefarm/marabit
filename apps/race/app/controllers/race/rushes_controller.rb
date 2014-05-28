module Race
  class RushesController < ::Race::ApplicationController
    def index
      @rushes = Rush.all
      @update = NumericUpdate.new
      @updates = NumericUpdate.all
      @total_updates = NumericUpdate.sum('quantity')
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
      params.require(:rush).permit(:name)
    end
  end
end
