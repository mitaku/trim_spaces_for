# -*- coding: utf-8 -*-

module TrimSpacesFor
  module ActiveRecordExtension
    extend ActiveSupport::Concern

    module ClassMethods
      def trim_spaces_for(*target_attributes)
        before_validation do |model|
          target_attributes.each do |attribute|
            model[attribute] = model[attribute].trim_white_spaces if model[attribute].respond_to?(:trim_white_spaces)
          end
        end
      end
    end
  end
end
