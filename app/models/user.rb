class User < ApplicationRecord
  has_many :chatroom_users
  has_many :messages
  has_many :chatrooms, through: :chatroom_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
