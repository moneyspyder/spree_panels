class CreatePanels < ActiveRecord::Migration
  def change
    create_table :spree_panels do |t|
      t.string :name, index: true, null: false
      t.text :content
      t.string :identifier, index:true, null: false
      t.string :url
    end
  end
end
