# http://jberczel.github.io/micro-reddit-walkthrough/

class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true,
            length: { maximum: 20 }
end
