require 'rails_helper'

describe Bear do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
end
