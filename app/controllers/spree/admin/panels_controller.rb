module Spree
  module Admin
    class PanelsController < ResourceController

      def index
        @panels = Spree::Panel.order(:name)
      end

      private

      def location_after_save
        url_for([:edit, :admin, @panel])
      end

    end
  end
end
