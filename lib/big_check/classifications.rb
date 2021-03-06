module BigCheck
  class Classifications
    attr_accessor :response

    def initialize response
      @response = response[:get_ribiz_reference_data_response][:get_ribiz_reference_data_result] ||= {}
      @valid = (@response.empty?) ? false : true
    end

    def professional_groups
      return @response[:professional_groups][:professional_group]
    end

    def type_of_specialisms
      return @response[:type_of_specialisms][:type_of_specialism]
    end

    def valid?
      @valid
    end

    def invalid?
      !@valid
    end

  end
end
