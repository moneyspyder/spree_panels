class Spree::Panel < ActiveRecord::Base

  has_many :panel_group_allocations, class_name: 'Spree::PanelGroupAllocation'
  has_many :panel_groups, through: :panel_group_allocations, class_name: 'Spree::PanelGroup'

  PANEL_STYLES ||= { small: '100x100' }

  has_attached_file :image, styles: PANEL_STYLES

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :name, :identifier, presence: true

  before_validation :set_identifier

  after_post_process :save_image_dimensions

  attr_accessor :remove_image
  before_validation { image.clear if remove_image == '1' }

  def set_identifier
    if self.identifier.present?
      self.identifier = self.identifier.parameterize
    else
      self.identifier = self.name.parameterize if self.name
    end
  end

  private

  def save_image_dimensions
    self.image_dimensions = Paperclip::Geometry.from_file(image.queued_for_write[:original]).to_s
  end

end