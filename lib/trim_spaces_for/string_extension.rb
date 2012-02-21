# -*- coding: utf-8 -*-

module TrimSpacesFor
  module StringExtension
    def trim_white_spaces
      white_spaces_regex = "[\u0020\u0009\u000a\u000d\u3000]+"
      self.gsub(/\A#{white_spaces_regex}|#{white_spaces_regex}\Z/u, "")
    end
  end
end
