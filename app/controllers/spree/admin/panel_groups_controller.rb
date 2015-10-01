module Spree
  module Admin
    class PanelGroupsController < ResourceController

      def update
        if  @object.update_attributes(panel_group_params)
          redirect_to location_after_save
        else
          respond_with(@object)
        end
      end

      def panel_group_params
        params.require(:panel_group).permit(:name, :identifier, panel_ids: [])
      end
    end
  end
end
