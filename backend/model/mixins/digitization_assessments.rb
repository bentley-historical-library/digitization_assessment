module DigitizationAssessments

  def self.included(base)
    base.one_to_one :digitization_assessment

    base.def_nested_record(:the_property => :digitization_assessment,
                           :contains_records_of_type => :digitization_assessment,
                           :corresponding_to_association => :digitization_assessment,
                           :is_array => false)
  end

end
