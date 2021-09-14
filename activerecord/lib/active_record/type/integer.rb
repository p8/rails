# frozen_string_literal: true

module ActiveRecord
  module Type
    class Integer < ActiveModel::Type::Integer # :nodoc:
      def serializable?(value)
        if value.respond_to? :to_i
          super
        else
          false
        end
      end
    end
  end
end
