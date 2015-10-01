class Spree::Panel < ActiveRecord::Base

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