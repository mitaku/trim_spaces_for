# -*- coding: utf-8 -*-

module TrimSpacesFor
  module ActiveRecordExtension
    extend ActiveSupport::Concern

    module ClassMethods
      def trim_spaces_for(*target_attributes)
        before_validation do |model|
          target_attributes.each do |attribute|
            before_cast = model.__send__("#{attribute}_before_type_cast")
            if before_cast.respond_to?(:trim_white_spaces)
              model[attribute] = before_cast.trim_white_spaces
            end
          end
        end
      end
    end
  end
end
