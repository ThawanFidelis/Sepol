class Researcher < ActiveRecord::Base
  validates_presence_of :nome
  has_attached_file :avatar, :styles => {:small => "300x300>", :thumb => "100x100"},
                               :url  => "/avatares/researchers/:id/:style/:basename.:extension",
                               :path => ":rails_root/public/avatares/researchers/:id/:style/:basename.:extension"

  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']
end

