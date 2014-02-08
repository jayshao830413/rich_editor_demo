# class Post < ActiveRecord::Base
#   has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
#   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
# end
require 'open-uri'
class Post
  include Mongoid::Document
  include Mongoid::Paperclip

  field :title, type: String
  field :content, type: String
  field :avatar_url, type: String

  has_mongoid_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'file type is not allowed (only jpeg/png/gif images)'
end
