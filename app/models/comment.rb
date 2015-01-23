class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

=begin
  
Another way is to validate using the foreign keys: 
:user_id and post_id, but I've read this is not as robust 
as the above validations.

Validating :user and :post will check that associated object exists, 
while validating on foreign key will only check that a key was entered, 
but not whether that :user_id or :post_id actually exist 
in the other models.
  
=end
  validates :user, presence:true
  validates :post, presence:true
  validates :body, presence:true
end
