class Reserve < ActiveRecord::Base
  has_many :equipaments
  has_many :user
end

