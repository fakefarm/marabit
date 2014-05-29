module Race
  module RushesHelper
    def show_status(update)
      if update == nil
        pluralize(update.last.quantity, 'mile')
      else
        ''
      end
    end

    def personal_score(user, rush)
      total ||= user.map { |n| if n.rush_id == rush.id; n.quantity end }.compact.reduce(:+)
      pluralize(total, 'mile')
    end

    def show_time_status(update)
      if update == nil
        distance_of_time_in_words(Time.now, update.last.created_at)
      else
        ''
      end
    end
  end
end
