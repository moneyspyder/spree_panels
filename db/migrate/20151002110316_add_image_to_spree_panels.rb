class AddImageToSpreePanels < ActiveRecord::Migration
  def change
    add_column :spree_panels, :image_file_name, :string
    add_column :spree_panels, :image_content_type, :string
    add_column :spree_panels, :image_file_size, :integer
    add_column :spree_panels, :image_updated_at, :datetime
  end
end
