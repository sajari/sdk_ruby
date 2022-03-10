=begin
#Search.io API

#Search.io offers a search and discovery service with Neuralsearch®, the world's first instant AI search technology. Businesses of all sizes use Search.io to build site search and discovery solutions that maximize e-commerce revenue, optimize on-site customer experience, and scale their online presence.

The version of the OpenAPI document: v4
Contact: support@search.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module SajariAPIClient
  class GetDefaultVersionRequestView
    VIEW_UNSPECIFIED = "VIEW_UNSPECIFIED".freeze
    BASIC = "BASIC".freeze
    FULL = "FULL".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = GetDefaultVersionRequestView.constants.select { |c| GetDefaultVersionRequestView::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #GetDefaultVersionRequestView" if constantValues.empty?
      value
    end
  end
end
