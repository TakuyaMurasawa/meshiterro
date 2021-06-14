class PostImage < ApplicationRecord
  belongs_to :user
  
  attachment :image
  
  # 一 : N = post_image : post_comments(モデル名の複数形)
  has_many :post_comments, dependent: :destroy
  
  
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end
