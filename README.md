# TrimSpacesFor

TrimSpacesFor gem removes leading and trailing white spaces from the AR attribute values.

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


This project rocks and uses MIT-LICENSE.
