class AddImageDimensionsToSpreePanels < ActiveRecord::Migration
  def change
    add_column :spree_panels, :image_dimensions, :string
  end
end
