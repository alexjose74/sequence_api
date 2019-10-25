class SequencesController < ApplicationController
  skip_before_action :verify_authenticity_token

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
