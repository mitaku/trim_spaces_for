#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'spec_helper'

describe Article do
  describe "trim_spaces_for" do
    before do
      @obj = Article.new
      @obj.title = " 　title 　"
      @obj.body = <<-EOS
 BODY-1　 　
　 BODY-2 　
      EOS
      @obj.number = "　　　12345 　　 "
      @obj.save!
    end
    subject { @obj }

    its(:title) { should == "title" }
    its(:body) do
      result = <<-"EOS"
BODY-1　 　
　 BODY-2
      EOS

      should == result.chomp
    end
    its(:number) { should == 12345 }
  end

end
