require 'symbolizer/version'

module Symbolizer
  # Symbolize hash keys
  #
  # @example
  #   Symbolizer.symbolize('a' => 'b') # => {a: 'b'}
  #   Symbolizer.symbolize('a' => {'b' => 'c'}) # => {a: {b: 'c'}}
  #   # See specs for more examples
  #
  # @param [Hash] hash
  #
  # @return [Hash]
  #   hash with symbolized keys
  #
  # @api public
  def self.symbolize(hash)
    hash.each_with_object({}) do |(key, value), normalized_hash|
      normalized_hash[key.to_sym] = normalize_value(value)
    end
  end

  def self.normalize_value(value)
    case value
    when Hash then symbolize(value)
    when Array then value.map(&method(:normalize_value))
    else value
    end
  end
  private_class_method :normalize_value
end
