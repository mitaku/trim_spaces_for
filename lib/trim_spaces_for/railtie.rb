# -*- coding: utf-8 -*-

module TrimSpacesFor
  class Railtie < ::Rails::Railtie
    initializer 'trim_spaces_for' do |app|
      TrimSpacesFor::Hooks.init!
    end
  end
end

