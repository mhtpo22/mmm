class Post < ActiveRecord::Base
  paginates_per 6
  validates :content,	{presence:true}
  validates :content,	{length:{maximum:140}}
end
