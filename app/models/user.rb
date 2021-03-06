class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # 一 : N = User : post_images(モデル名の複数形)
  has_many :post_images, dependent: :destroy

  # 一 : N = User : post_comments(モデル名の複数形)
  has_many :post_comments, dependent: :destroy

  has_many :favorites, dependent: :destroy
  
  attachment :profile_image



end
