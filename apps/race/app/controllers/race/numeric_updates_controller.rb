module Race
  class NumericUpdatesController < ::Race::ApplicationController
    def index
      @updates = NumericUpdate.all
    end

    def new
      @update = NumericUpdate.new
    end

    def create
      @update = NumericUpdate.new(numeric_update_params)
      respond_to do |format|
        if @update.save
          format.html { redirect_to root_path }
        end
      end
    end

  private
    def numeric_update_params
      params.require(:numeric_update).permit(:quantity)
    end
  end
end
