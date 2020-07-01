class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :messages
  validates :name, presence: true, uniqueness: true

  def show_last_message
    if (last_message = messages.last).present?
      if last_message.content?
        last_message.content
      else
        '画像が投稿されています'
      end
    else
<<<<<<< HEAD
      'まだメッセージはありません'
=======
      'まだメッセージはありません。'
>>>>>>> 79fe9527969531dbf80bf0f6f1b470d88fb91a76
    end
  end
  
end
