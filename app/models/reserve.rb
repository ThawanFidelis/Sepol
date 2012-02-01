class Reserve < ActiveRecord::Base
  belongs_to :equipament
  belongs_to :user
end

