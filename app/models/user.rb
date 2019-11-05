class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :kudos

  def self.reset_kudos
    u = User.all
    u.each do |k|
      k.kudos_count = 3
      k.save!
    end
  end
end
