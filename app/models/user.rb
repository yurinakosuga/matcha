class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :diaries
  has_many :comments
  
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :nickname, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  enum gender: { male: 0, female: 1 }
  enum age: {
    under_teens: 1,
    teens: 2,
    twenties: 3,
    thirties: 4,
    forties: 5,
    fifties: 6,
    sixties: 7,
    over_seventies: 8
  }
end
