=begin
#Sajari API

#Sajari is a smart, highly-configurable, real-time search service that enables thousands of businesses worldwide to provide amazing search experiences on their websites, stores, and applications.

The version of the OpenAPI document: v4
Contact: support@sajari.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module SajariAPIClient
  class GetPipelineRequestView
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
      constantValues = GetPipelineRequestView.constants.select { |c| GetPipelineRequestView::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #GetPipelineRequestView" if constantValues.empty?
      value
    end
  end
end