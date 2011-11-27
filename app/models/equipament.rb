class Equipament < ActiveRecord::Base
  validates_presence_of :nome, :descricao

  has_attached_file :picture, :styles => {:small => "150x150>", :large => "650x550>"},
                               :url  => "/pictures/equipaments/:id/:style/:basename.:extension",
                               :path => ":rails_root/public/pictures/equipaments/:id/:style/:basename.:extension"

  validates_attachment_presence :picture
  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']
end

