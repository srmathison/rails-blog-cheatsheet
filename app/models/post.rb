class Post < ActiveRecord::Base
  
  # validates there is a title entered with a min of 5 characters
  validates :title, presence: true, length: {minimum: 5}
  
  # validates there is a body content entered
  validates :body, presence: true

  has_many :comments, dependent: :destroy
  

end
