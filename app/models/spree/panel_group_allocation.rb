class Spree::PanelGroupAllocation < ActiveRecord::Base
  belongs_to :panel, class_name: 'Spree::Panel'
  belongs_to :panel_group, class_name: 'Spree::PanelGroup'
end