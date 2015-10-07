module Spree
  module Admin
    class PanelGroupsController < ResourceController
      before_filter :load_panels, only: [:new, :edit]

      private

      def load_panels
        @panels = Spree::Panel.order(:name)
      end

      def panel_group_params
        params.require(:panel_group).permit(:name, :identifier, :position, panel_ids: [])
      end

      def location_after_save
        url_for([:edit, :admin, @panel_group])
      end

    end
  end
end
