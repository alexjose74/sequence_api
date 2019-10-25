class SequencesController < ApplicationController
  # This should ideally be removed when an oAuth authentication system is setup which authenticates the system accessing the API
  skip_before_action :verify_authenticity_token

  # Public: Handles the POST call to save the sequence data
  #
  # Returns a status message indicating the success of the save action
  def create
    sequence_details = params[:sequences]
    sequence_details.each do |sequence_element|
      sequence_model = Sequence.new
      sequence_model.sequence = sequence_element[:sequence]
      sequence_model.search = sequence_element[:search]
      sequence_model.matches = sequence_element[:matches]
      sequence_model.save
    end
  end
end
