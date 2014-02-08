# class Post < ActiveRecord::Base
#   has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
#   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
# end
class Post
  include Mongoid::Document
  include Mongoid::Paperclip

  field :title, type: String
  field :content, type: String

  has_mongoid_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png)

  # has_mongoid_attached_file :avatar
    # :styles => {
    #   :original => ['1920x1680>', :jpg],
    #   :small    => ['100x100#',   :jpg],
    #   :medium   => ['250x250',    :jpg],
    #   :large    => ['500x500>',   :jpg]
    # }
end
