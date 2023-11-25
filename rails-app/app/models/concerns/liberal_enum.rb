module LiberalEnum
  extend ActiveSupport::Concern

  # Inspired by discussion in:
  # https://stackoverflow.com/questions/37177893/rails-enum-validation-not-working-but-raise-argumenterror

  included do
    validate do
      self.class::ENUMS.each do |name|
        if instance_variable_get("@enum_not_valid_#{name}")
          errors.add(name.to_sym, "must be #{self.class.send("#{name}s").keys.join(' or ')}")
        end
      end
    end

    self::ENUMS.each do |name|
      self.define_method("#{name}=") do |value|
        begin
          super(value)
          instance_variable_set("@enum_not_valid_#{name}", false)
        rescue ArgumentError => _
          self[name] = nil
          instance_variable_set("@enum_not_valid_#{name}", true)
        end
      end
    end
  end

end