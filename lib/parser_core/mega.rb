module ParserCore
  module Mega
    def mega
      called_from = caller_locations[0].label
      included_modules = (self.class.included_modules - Class.included_modules - [Mega])
      included_modules.map { |m| m.instance_method(called_from).bind(self).call }
      Rails.logger.debug("zmienione wywolanie")
    end
  end
end
