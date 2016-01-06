class Video < ActiveRecord::Base
  belongs_to :category
  validates :title, :description, presence: true

  def self.search_by_title(title)
    return [] if title.blank?
    Video.where("title LIKE ?", "%#{title}%").order(:created_at)
  end
end