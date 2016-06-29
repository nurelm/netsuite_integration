module NetsuiteIntegration
  module Helpers
    # Netsuite custom field mappings: the key is an attribute name for the
    # order payload's json and the value is a netsuite custom field's
    # internal name id
    module CustomFieldHelper

      def get_custom_field(record, attribute)
        # Checks that the netsuite_custom_field_mappings parameter is defined
        if config[:netsuite_custom_field_mappings].is_a? String
          cf_mappings = custom_field_mappings_hash

          # Retrieve mapping and use value to find the custom field
          custom_field = record.custom_field_list.custom_fields.find do |cf|
            cf.script_id==cf_mappings[attribute]
          end

          custom_field.try(:value)
        end
      end

      private
        # Creates a custom field mappings hash from the mappings field parameter
        # named netsuite_custom_field_mappings defined on an endpoint. The
        # mapping values are setup within the config of a flow for an endpoint.
        def custom_field_mappings_hash
          cf_mappings_array = JSON.parse(config[:netsuite_custom_field_mappings])
          cf_mappings_hash = cf_mappings_array.reduce({}, :merge)
        end
    end
  end
end