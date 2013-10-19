class Theme < ActiveRecord::Base
  validates :theme_title, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
