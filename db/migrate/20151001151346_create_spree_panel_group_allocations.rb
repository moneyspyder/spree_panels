class CreateSpreePanelGroupAllocations < ActiveRecord::Migration
  def change
    create_table :spree_panel_group_allocations do |t|
      t.references :panel, index: true, foreign_key: true
      t.references :panel_group, index: true, foreign_key: true
      t.integer :position, index: true
    end
  end
end
