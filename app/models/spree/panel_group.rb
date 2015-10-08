class Spree::PanelGroup < ActiveRecord::Base

  has_many :panel_group_allocations, class_name: 'Spree::PanelGroupAllocation'
  has_many :panels, -> { order(name: :asc) }, through: :panel_group_allocations, class_name: 'Spree::Panel'

  validates :name, :identifier, presence: true

  before_validation :set_identifier

  def set_identifier
    if self.identifier.present?
      self.identifier = self.identifier.parameterize
    else
      self.identifier = self.name.parameterize if self.name
    end
  end

end