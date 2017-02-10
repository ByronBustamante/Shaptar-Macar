class Product < ActiveRecord::Base
  has_attached_file :foto1, styles: { small: "200x200", medium: "600x600>", large: "800x800>" }, default_url: ""
  validates_attachment_content_type :foto1, content_type: /\Aimage\/.*\z/

  has_attached_file :foto2, styles: { small: "200x200", medium: "600x600>", large: "800x800>" }, default_url: ""
  validates_attachment_content_type :foto2, content_type: /\Aimage\/.*\z/

  has_attached_file :foto3, styles: { small: "200x200", medium: "600x600>", large: "800x800>" }, default_url: ""
  validates_attachment_content_type :foto3, content_type: /\Aimage\/.*\z/

  has_attached_file :foto4, styles: { small: "200x200", medium: "600x600>", large: "800x800>" }, default_url: ""
  validates_attachment_content_type :foto4, content_type: /\Aimage\/.*\z/
end
