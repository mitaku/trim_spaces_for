class Article < ActiveRecord::Base
  trim_spaces_for :title, :body
end
