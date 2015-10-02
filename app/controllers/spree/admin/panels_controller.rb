module Spree
  module Admin
    class PanelsController < ResourceController

      private

      def location_after_save
        url_for([:edit, :admin, @panel])
      end

    end
  end
end
