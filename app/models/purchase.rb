class Purchase < ActiveRecord::Base
  has_attached_file :factura, styles: { small: "50x50", medium: "400x400>", large: "800x800>" }, default_url: ""
  validates_attachment_content_type :factura, content_type: /\Aimage\/.*\z/
end
