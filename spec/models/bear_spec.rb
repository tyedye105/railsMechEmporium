require 'rails_helper'

describe Bear do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country }
  it { should validate_presence_of :description }
  it { should validate_presence_of :forte }
  it { should validate_numericality_of :cost}
end
