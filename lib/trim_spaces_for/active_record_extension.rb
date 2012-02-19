# -*- coding: utf-8 -*-

module TrimSpacesFor
  module ActiveRecordExtension
    extend ActiveSupport::Concern

    module ClassMethods
      def trim_spaces_for(*target_attributes)
        before_validation do
          target_attributes.each do |attribute|
            value = self.send(attribute)
            if value.is_a?(String)
              self.send("#{attribute}=", value.trim)
            end
          end
        end
      end
    end
  end
end
