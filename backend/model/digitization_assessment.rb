class DigitizationAssessment < Sequel::Model(:digitization_assessment)
  include ASModel
  corresponds_to JSONModel(:digitization_assessment)

  set_model_scope :global

end