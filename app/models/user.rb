class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :recoverable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :registerable, :trackable, :validatable
  belongs_to :reserve
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :name, :password, :password_confirmation, :remember_me

  validates_presence_of :name, :password, :email
  validates_uniqueness_of :email, :case_sensitive => false
end

