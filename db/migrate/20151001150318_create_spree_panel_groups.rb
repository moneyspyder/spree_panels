class CreateSpreePanelGroups < ActiveRecord::Migration
  def change
    create_table :spree_panel_groups do |t|
      t.string :name, null: false, default: ''
      t.string :identifier, index: true, null:false, default: ''
    end
  end
end
