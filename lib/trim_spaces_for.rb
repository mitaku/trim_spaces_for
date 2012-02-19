module TrimSpacesFor
  def self.hook!
    require 'rails' if rails?

    require 'trim_spaces_for/string_extension'
    require 'trim_spaces_for/hooks'
    if rails?
      require 'trim_spaces_for/railtie'
      require 'trim_spaces_for/engine'
    else
      TrimSpacesFor::Hooks.init!
    end
  end

  def self.load!
    hook!
  end

  private
  def self.rails?
    defined?(::Rails)
  end
end

TrimSpacesFor.load!
