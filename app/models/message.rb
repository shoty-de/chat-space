class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :content, presence: true, unless: :image?

  mount_uploader :image, ImageUploader
<<<<<<< HEAD
end
=======
end
>>>>>>> 79fe9527969531dbf80bf0f6f1b470d88fb91a76
