class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :active, -> { where(archived: false)   }

  has_many :users


  def full_name
  	first_name + " " + last_name
  end

end
