class Comment < ActiveRecord::Base
        attr_accessible :content, :user_id
  
        belongs_to :user
        belongs_to :micropost
        has_many :votes, :dependent => :destroy

  
        validates :content, :presence => true
        validates :user_id, :presence => true
        validates :micropost_id, :presence => true
end
