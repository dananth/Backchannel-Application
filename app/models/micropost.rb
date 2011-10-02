class Micropost < ActiveRecord::Base
  attr_accessible :content

  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :votes, :dependent => :destroy

  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true

  default_scope :order => 'microposts.created_at DESC'
end
