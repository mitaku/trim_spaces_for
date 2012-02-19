# -*- coding: utf-8 -*-

require 'trim_spaces_for/string_extension'
require 'trim_spaces_for/active_record_extension'

module TrimSpacesFor
  class Hooks
    def self.init!
      ::String.send :include, TrimSpacesFor::StringExtension

      ActiveSupport.on_load(:active_record) do
        ::ActiveRecord::Base.send :include, TrimSpacesFor::ActiveRecordExtension
      end
    end
  end
end
