# TrimSpacesFor

TrimSpacesFor gem removes leading and trailing white spaces from the AR attribute values.
That corresponds to the full-width space.

## Installing
    gem install trim_spaces_for

## Usage

    class Article < ActiveRecord::Base
      trim_spaces_for :title
    end

    > obj = Article.new
    > obj.title = "  Article Title  "
    > obj.save  #=> true
    > obj.title  #=> "Article Title"

    class User < ActiveRecord::Base
      trim_spaces_for :age
      validates :age, :numericality => {:only_integer => true}
    end

    > obj = User.new
    > obj.age = "　23" # full-width space
    > obj.save  #=> true
    > obj.age = "23"


This project rocks and uses MIT-LICENSE.
