class Url < ApplicationRecord
  validates :original_url, presence: true
  validate :validate_url, :short_url


  def validate_url
    errors.add(:original_url, "cannot contain @") if original_url && original_url.include?("@")
  end

  def short_url
    "/#{id}"
  end

end
