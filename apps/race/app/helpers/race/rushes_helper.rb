module Race
  module RushesHelper
    def personal_score(user, rush)
      total ||= user.map { |n| if n.rush_id == rush.id; n.quantity end }.compact.reduce(:+)
      metric = rush.metric || ''
      pluralize(total, metric)
    end

    def show_time_status(update)
      unless update == nil
        distance_of_time_in_words(Time.now, update.created_at)
      else
        ''
      end
    end
  end
end
