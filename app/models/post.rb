class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
   belongs_to :topic
   mount_uploader :image, ImageUploader
   validates :title, length: { minimum: 5 }, presence: true
   validates :body, length: { minimum: 5 }, presence: true
end
