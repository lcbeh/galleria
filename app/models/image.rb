class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader
  validates :title, presence: true
  validates :avatar, presence: true
end
