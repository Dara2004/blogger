# no attr defined inside the model.  how does Rails know that an Article should have a title, a body, etc? The answer is a technique called reflection. Rails queries the database, looks at the articles table, and assumes that whatever columns that table has should be the attributes for the model.
class Article < ApplicationRecord
  has_many :comments
end
